//
//  File.swift
//  
//
//  Created by Gabriel Soria Souza on 17/01/22.
//

import Fluent
import Vapor

struct CreateAnalytics: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("analytics")
            .id()
            .field("device", .string, .required)
            .field("os", .string, .required)
            .field("numberOfSessions", .string, .required)
            .field("context", .string, .required)
            .field("typeOfEvent", .string, .required)
            .create()
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("metric").delete()
    }
}
