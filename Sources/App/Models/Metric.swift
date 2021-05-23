//
//  File.swift
//  
//
//  Created by Gabriel Soria Souza on 14/05/21.
//


import Fluent
import Vapor

final class Metric: Model {
    static let schema: String = "metric"
    
    @ID
    var id: UUID?
    
    @Field(key: "data")
    var data: Data
    
    init() {}
    
    init(id: UUID? = nil, data: Data) {
        self.id = id
        self.data = data
    }
}

extension Metric: Content {}
