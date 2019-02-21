//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class JourneyPlannerCycleHireDockingStationData: APIModel {

    public var destinationId: String?

    public var destinationNumberOfBikes: Int?

    public var destinationNumberOfEmptySlots: Int?

    public var originId: String?

    public var originNumberOfBikes: Int?

    public var originNumberOfEmptySlots: Int?

    public init(destinationId: String? = nil, destinationNumberOfBikes: Int? = nil, destinationNumberOfEmptySlots: Int? = nil, originId: String? = nil, originNumberOfBikes: Int? = nil, originNumberOfEmptySlots: Int? = nil) {
        self.destinationId = destinationId
        self.destinationNumberOfBikes = destinationNumberOfBikes
        self.destinationNumberOfEmptySlots = destinationNumberOfEmptySlots
        self.originId = originId
        self.originNumberOfBikes = originNumberOfBikes
        self.originNumberOfEmptySlots = originNumberOfEmptySlots
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        destinationId = try container.decodeIfPresent("destinationId")
        destinationNumberOfBikes = try container.decodeIfPresent("destinationNumberOfBikes")
        destinationNumberOfEmptySlots = try container.decodeIfPresent("destinationNumberOfEmptySlots")
        originId = try container.decodeIfPresent("originId")
        originNumberOfBikes = try container.decodeIfPresent("originNumberOfBikes")
        originNumberOfEmptySlots = try container.decodeIfPresent("originNumberOfEmptySlots")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(destinationId, forKey: "destinationId")
        try container.encodeIfPresent(destinationNumberOfBikes, forKey: "destinationNumberOfBikes")
        try container.encodeIfPresent(destinationNumberOfEmptySlots, forKey: "destinationNumberOfEmptySlots")
        try container.encodeIfPresent(originId, forKey: "originId")
        try container.encodeIfPresent(originNumberOfBikes, forKey: "originNumberOfBikes")
        try container.encodeIfPresent(originNumberOfEmptySlots, forKey: "originNumberOfEmptySlots")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? JourneyPlannerCycleHireDockingStationData else { return false }
      guard self.destinationId == object.destinationId else { return false }
      guard self.destinationNumberOfBikes == object.destinationNumberOfBikes else { return false }
      guard self.destinationNumberOfEmptySlots == object.destinationNumberOfEmptySlots else { return false }
      guard self.originId == object.originId else { return false }
      guard self.originNumberOfBikes == object.originNumberOfBikes else { return false }
      guard self.originNumberOfEmptySlots == object.originNumberOfEmptySlots else { return false }
      return true
    }

    public static func == (lhs: JourneyPlannerCycleHireDockingStationData, rhs: JourneyPlannerCycleHireDockingStationData) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
