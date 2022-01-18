import Fluent
import Vapor

func routes(_ app: Application) throws {
    let metricController = MetricsController()
    let analyticsController = AnalyticsController()
    try app.register(collection: metricController)
    try app.register(collection: analyticsController)
}
