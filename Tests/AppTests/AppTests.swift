@testable import App
import XCTVapor

final class AppTests: XCTestCase {
    func testHelloWorld() throws {
        let app = Application(.testing)
        defer { app.shutdown() }
        try configure(app)

        try app.test(.GET, "hello", afterResponse: { res in
            XCTAssertEqual(res.status, .ok)
            XCTAssertEqual(res.body.string, "Hello, world!")
        })
    }
    
    func testIntegratedLocal() throws {
//        let urlString = "http://127.0.0.1:8080/metric"
//        let url = try XCTUnwrap(URL(string: urlString))
//        let jsonData = """
//            {
//                "metric": 1
//            }
//            """.data(using: .utf8)
//        let unwrappedData = try XCTUnwrap(jsonData)
//        let metric = Metric(data: unwrappedData)
//        let encoded = try JSONEncoder().encode(metric)
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        request.httpBody = encoded
//
//        let expectation = XCTestExpectation(description: "Expect item to be posted")
//        let task = URLSession.shared.dataTask(with: request) { data, response, error in
//            if error != nil {
//                XCTFail("post should not fail")
//            }
//
//        }
//        task.resume()
//        wait(for: [expectation], timeout: 5.0)
    }
}
