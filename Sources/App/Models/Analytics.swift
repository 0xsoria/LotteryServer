//
//  Analytics.swift
//  
//
//  Created by Gabriel Soria Souza on 17/01/22.
//

import Fluent
import Vapor

final class Analytics: Model {
    static let schema: String = "analytics"
    
    @ID
    var id: UUID?
    
    @Field(key: "device")
    var device: String
    
    @Field(key: "os")
    var os: String
    
    @Field(key: "numberOfSessions")
    var numberOfSessions: String
    
    @Field(key: "context")
    var context: String
    
    @Field(key: "typeOfEvent")
    var typeOfEvent: String
    
    init(id: UUID? = nil,
         device: String,
         numberOfSessions: String,
         context: String,
         typeOfEvent: String
    ) {
        self.id = id
        self.device = device
        self.os = os
        self.numberOfSessions = numberOfSessions
        self.context = context
        self.typeOfEvent = typeOfEvent
    }
    
    init() {}
}

extension Analytics: Content {}
