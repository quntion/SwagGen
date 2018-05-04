//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class StopPointCategory: Codable, Equatable {

    public var availableKeys: [String]?

    public var category: String?

    public init(availableKeys: [String]? = nil, category: String? = nil) {
        self.availableKeys = availableKeys
        self.category = category
    }

    private enum CodingKeys: String, CodingKey {
        case availableKeys
        case category
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        availableKeys = try container.decodeArrayIfPresent(.availableKeys)
        category = try container.decodeIfPresent(.category)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(availableKeys, forKey: .availableKeys)
        try container.encode(category, forKey: .category)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? StopPointCategory else { return false }
      guard self.availableKeys == object.availableKeys else { return false }
      guard self.category == object.category else { return false }
      return true
    }

    public static func == (lhs: StopPointCategory, rhs: StopPointCategory) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
