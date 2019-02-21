//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension TFL.Place {

    /** Gets any places of the given type whose geography intersects the given latitude and longitude. In practice this means the Place
            must be polygonal e.g. a BoroughBoundary. */
    public enum PlaceGetAt {

        public static let service = APIService<Response>(id: "Place_GetAt", tag: "Place", method: "GET", path: "/Place/{type}/At/{Lat}/{Lon}", hasBody: false)

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The place type (a valid list of place types can be obtained from the /Place/Meta/placeTypes endpoint) */
                public var type: [String]

                public var lat: String

                public var lon: String

                public var locationLat: Double

                public var locationLon: Double

                public init(type: [String], lat: String, lon: String, locationLat: Double, locationLon: Double) {
                    self.type = type
                    self.lat = lat
                    self.lon = lon
                    self.locationLat = locationLat
                    self.locationLon = locationLon
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: PlaceGetAt.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(type: [String], lat: String, lon: String, locationLat: Double, locationLon: Double) {
                let options = Options(type: type, lat: lat, lon: lon, locationLat: locationLat, locationLon: locationLon)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "type" + "}", with: "\(self.options.type.joined(separator: ","))")
            }

            public override var parameters: [String: Any] {
                var params: [String: Any] = [:]
                params["lat"] = options.lat
                params["lon"] = options.lon
                params["location.lat"] = options.locationLat
                params["location.lon"] = options.locationLon
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Object

            /** OK */
            case status200(Object)

            public var success: Object? {
                switch self {
                case .status200(let response): return response
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Object.self, from: data))
                default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
