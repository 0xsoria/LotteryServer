//
//  AnalyticsController.swift
//  
//
//  Created by Gabriel Soria Souza on 16/05/21.
//

import Fluent
import Vapor

struct AnalyticsController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let analyticsRoutes = routes.grouped("analytics")
        analyticsRoutes.get(use: getAllHandler)
        analyticsRoutes.post(use: createHandler)
        analyticsRoutes.delete("all", use: deleteAll)
    }
    
    func getAllHandler(_ req: Request) -> EventLoopFuture<[Analytics]> {
        Analytics.query(on: req.db).all()
    }
    
    func createHandler(_ req: Request) throws -> EventLoopFuture<Analytics> {
        let analytics = try req.content.decode(Analytics.self)
        return analytics.save(on: req.db).map {
            analytics
        }
    }
    
    func deleteAll(_ req: Request) -> EventLoopFuture<HTTPStatus> {
        Analytics.query(on: req.db).all()
            .flatMap { analytics in
                analytics.delete(on: req.db)
                    .transform(to: .noContent)
            }
    }
}
