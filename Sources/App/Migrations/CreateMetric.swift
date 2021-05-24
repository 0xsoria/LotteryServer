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
            .field("cumulativeGPUTime", .string, .required)
            .field("scrollHitchTimeRatio", .string, .required)
            .field("peakMemoryUsage", .string, .required)
            .field("averageSuspendedMemory", .string, .required)
            .field("cumulativeCellularDownload", .string, .required)
            .field("cumulativeWifiDownload", .string, .required)
            .field("cumulativeCellularUpload", .string, .required)
            .field("cumulativeWifiUpload", .string, .required)
            .field("appBuildVersion", .string, .required)
            .field("osVersion", .string, .required)
            .field("regionFormat", .string, .required)
            .field("platformARCH", .string, .required)
            .field("deviceType", .string, .required)
            .field("lauchTimeHistogrammedTimeToFirstDraw", .string, .required)
            .field("histogrammedApplicationResumeTime", .string, .required)
            .field("cumulativeAppWatchdogExitCount", .string, .required)
            .field("cumulativeMemoryResourceLimitExitCount", .int, .required)
            .field("cumulativeNormalAppExitCount", .int, .required)
            .field("cumulativeBackgroundFetchCompletionTimeoutExitCount", .int, .required)
            .field("cumulativeBadAccessExitCount", .int, .required)
            .field("cumulativeCPUResourceLimitExitCount", .int, .required)
            .field("cumulativeBackgroundTaskAssertionTimeoutExitCount", .int, .required)
            .field("cumulativeForegroundTime", .string, .required)
            .field("cumulativeBackgroundTime", .string, .required)
            .field("appVersion", .string, .required)
            .create()
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        database.schema("metric").delete()
    }
}

