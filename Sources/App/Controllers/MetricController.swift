//
//  MetricsController.swift
//  
//
//  Created by Gabriel Soria Souza on 15/05/21.
//

import Fluent
import Vapor

struct MetricsController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let metricRoutes = routes.grouped("metric")
        metricRoutes.get(use: getAllHandler)
        metricRoutes.post(use: createHandler)
        metricRoutes.get(":metricID", use: getHandler)
        metricRoutes.delete(":metricID", use: deleteHandler)
        metricRoutes.delete("metrics", use: deleteAll)
    }
    
    func getAllHandler(_ req: Request) -> EventLoopFuture<[Metric]> {
        Metric.query(on: req.db).all()
    }
    
    func createHandler(_ req: Request) throws -> EventLoopFuture<Metric> {
        let metric = try req.content.decode(Metric.self)
        return metric.save(on: req.db).map {
            metric
        }
    }
    
    func getHandler(_ req: Request) -> EventLoopFuture<Metric> {
        Metric.find(req.parameters.get("metricID"),
                    on: req.db)
            .unwrap(or: Abort(.notFound))
    }
    
    func deleteHandler(_ req: Request) -> EventLoopFuture<HTTPStatus> {
        Metric.find(req.parameters.get("metricID"), on: req.db)
            .unwrap(or: Abort(.notFound))
            .flatMap { metric in
                metric.delete(on: req.db)
                    .transform(to: .noContent)
            }
    }
    
    func deleteAll(_ req: Request) -> EventLoopFuture<HTTPStatus> {
        Metric.query(on: req.db).all()
            .flatMap { metric in
                metric.delete(on: req.db)
                    .transform(to: .noContent)
            }
    }
}

