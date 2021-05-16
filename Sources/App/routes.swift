import Fluent
import Vapor

func routes(_ app: Application) throws {
    let metricController = MetricsController()
    try app.register(collection: metricController)
}
