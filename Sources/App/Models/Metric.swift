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
    
    @Field(key: "cumulativeGPUTime")
    var cumulativeGPUTime: String
    
    @Field(key: "scrollHitchTimeRatio")
    var scrollHitchTimeRatio: String
    
    @Field(key: "peakMemoryUsage")
    var peakMemoryUsage: String
    
    @Field(key: "averageSuspendedMemory")
    var averageSuspendedMemory: String
    
    @Field(key: "cumulativeCellularDownload")
    var cumulativeCellularDownload: String
    
    @Field(key: "cumulativeWifiDownload")
    var cumulativeWifiDownload: String
    
    @Field(key: "cumulativeCellularUpload")
    var cumulativeCellularUpload: String
    
    @Field(key: "cumulativeWifiUpload")
    var cumulativeWifiUpload: String
    
    @Field(key: "appBuildVersion")
    var appBuildVersion: String
    
    @Field(key: "osVersion")
    var osVersion: String
    
    @Field(key: "regionFormat")
    var regionFormat: String
    
    @Field(key: "platformARCH")
    var platformARCH: String
    
    @Field(key: "deviceType")
    var deviceType: String
    
    @Field(key: "lauchTimeHistogrammedTimeToFirstDraw")
    var lauchTimeHistogrammedTimeToFirstDraw: String
    
    @Field(key: "histogrammedApplicationResumeTime")
    var histogrammedApplicationResumeTime: String
    
    @Field(key: "cumulativeAppWatchdogExitCount")
    var cumulativeAppWatchdogExitCount: String
    
    @Field(key: "cumulativeMemoryResourceLimitExitCount")
    var cumulativeMemoryResourceLimitExitCount: Int
    
    @Field(key: "cumulativeNormalAppExitCount")
    var cumulativeNormalAppExitCount: Int
    
    @Field(key: "cumulativeBackgroundFetchCompletionTimeoutExitCount")
    var cumulativeBackgroundFetchCompletionTimeoutExitCount: Int
    
    @Field(key: "cumulativeBadAccessExitCount")
    var cumulativeBadAccessExitCount: Int
    
    @Field(key: "cumulativeCPUResourceLimitExitCount")
    var cumulativeCPUResourceLimitExitCount: Int
    
    @Field(key: "cumulativeBackgroundTaskAssertionTimeoutExitCount")
    var cumulativeBackgroundTaskAssertionTimeoutExitCount: Int
    
    @Field(key: "cumulativeForegroundTime")
    var cumulativeForegroundTime: String
    
    @Field(key: "cumulativeBackgroundTime")
    var cumulativeBackgroundTime: String
    
    @Field(key: "appVersion")
    var appVersion: String
    
    init() {}
    
    init(id: UUID? = nil,
         cumulativeGPUTime: String,
         scrollHitchTimeRatio: String,
         peakMemoryUsage: String,
         averageSuspendedMemory: String,
         cumulativeCellularDownload: String,
         cumulativeWifiDownload: String,
         cumulativeCellularUpload: String,
         cumulativeWifiUpload: String,
         appBuildVersion: String,
         osVersion: String,
         regionFormat: String,
         platformARCH: String,
         deviceType: String,
         lauchTimeHistogrammedTimeToFirstDraw: String,
         histogrammedApplicationResumeTime: String,
         cumulativeAppWatchdogExitCount: String,
         cumulativeMemoryResourceLimitExitCount: Int,
         cumulativeNormalAppExitCount: Int,
         cumulativeBackgroundFetchCompletionTimeoutExitCount: Int,
         cumulativeBadAccessExitCount: Int,
         cumulativeCPUResourceLimitExitCount: Int,
         cumulativeBackgroundTaskAssertionTimeoutExitCount: Int,
         cumulativeForegroundTime: String,
         cumulativeBackgroundTime: String,
         appVersion: String
    ) {
        self.id = id
        self.cumulativeGPUTime = cumulativeGPUTime
        self.scrollHitchTimeRatio = scrollHitchTimeRatio
        self.peakMemoryUsage = peakMemoryUsage
        self.averageSuspendedMemory = averageSuspendedMemory
        self.cumulativeCellularDownload = cumulativeCellularDownload
        self.cumulativeWifiDownload = cumulativeWifiDownload
        self.cumulativeCellularUpload = cumulativeCellularUpload
        self.cumulativeWifiUpload = cumulativeWifiUpload
        self.appBuildVersion = appBuildVersion
        self.osVersion = osVersion
        self.regionFormat = regionFormat
        self.platformARCH = platformARCH
        self.deviceType = deviceType
        self.lauchTimeHistogrammedTimeToFirstDraw = lauchTimeHistogrammedTimeToFirstDraw
        self.histogrammedApplicationResumeTime = histogrammedApplicationResumeTime
        self.cumulativeAppWatchdogExitCount = cumulativeAppWatchdogExitCount
        self.cumulativeMemoryResourceLimitExitCount = cumulativeMemoryResourceLimitExitCount
        self.cumulativeNormalAppExitCount = cumulativeNormalAppExitCount
        self.cumulativeBackgroundFetchCompletionTimeoutExitCount = cumulativeBackgroundFetchCompletionTimeoutExitCount
        self.cumulativeBadAccessExitCount = cumulativeBadAccessExitCount
        self.cumulativeCPUResourceLimitExitCount = cumulativeCPUResourceLimitExitCount
        self.cumulativeBackgroundTaskAssertionTimeoutExitCount = cumulativeBackgroundTaskAssertionTimeoutExitCount
        self.cumulativeForegroundTime = cumulativeForegroundTime
        self.cumulativeBackgroundTime = cumulativeBackgroundTime
        self.appVersion = appVersion
        
    }
}

extension Metric: Content {}
