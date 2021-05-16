//
//  CreateMetric.swift
//  
//
//  Created by Gabriel Soria Souza on 14/05/21.
//

import Fluent

struct CreateMetric: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        database.schema("metric")
            .id()
            .field("data", .string, .required)
            .create()
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("metric").delete()
    }
}
