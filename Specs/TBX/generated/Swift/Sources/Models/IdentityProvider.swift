//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class IdentityProvider: Codable, Equatable {

    public var description: String

    public var shortName: String

    public var apiKey: String

    public var clientType: String

    public var devicesLimit: Double

    public var active: Bool

    public var canCreateToken: Bool

    public var canCreateDevice: Bool

    public var conector: String?

    public var haveMultipleURNService: Bool?

    public var id: ObjectID?

    public var maintenance: Bool?

    public var oauth2: [String: Any]?

    public var saml: [String: Any]?

    public var sendRequestorAuthZ: Bool?

    public var subscriberIdData: String?

    public var whitelistDomains: [String]?

    public var wsAPIKey: String?

    public var wsMaintenance: Bool?

    public var wsMaintenanceCountry: [String]?

    public var wsNameSpace: String?

    public var wsURL: String?

    public init(description: String, shortName: String, apiKey: String, clientType: String, devicesLimit: Double, active: Bool, canCreateToken: Bool, canCreateDevice: Bool, conector: String? = nil, haveMultipleURNService: Bool? = nil, id: ObjectID? = nil, maintenance: Bool? = nil, oauth2: [String: Any]? = nil, saml: [String: Any]? = nil, sendRequestorAuthZ: Bool? = nil, subscriberIdData: String? = nil, whitelistDomains: [String]? = nil, wsAPIKey: String? = nil, wsMaintenance: Bool? = nil, wsMaintenanceCountry: [String]? = nil, wsNameSpace: String? = nil, wsURL: String? = nil) {
        self.description = description
        self.shortName = shortName
        self.apiKey = apiKey
        self.clientType = clientType
        self.devicesLimit = devicesLimit
        self.active = active
        self.canCreateToken = canCreateToken
        self.canCreateDevice = canCreateDevice
        self.conector = conector
        self.haveMultipleURNService = haveMultipleURNService
        self.id = id
        self.maintenance = maintenance
        self.oauth2 = oauth2
        self.saml = saml
        self.sendRequestorAuthZ = sendRequestorAuthZ
        self.subscriberIdData = subscriberIdData
        self.whitelistDomains = whitelistDomains
        self.wsAPIKey = wsAPIKey
        self.wsMaintenance = wsMaintenance
        self.wsMaintenanceCountry = wsMaintenanceCountry
        self.wsNameSpace = wsNameSpace
        self.wsURL = wsURL
    }

    private enum CodingKeys: String, CodingKey {
        case description
        case shortName
        case apiKey
        case clientType
        case devicesLimit
        case active
        case canCreateToken
        case canCreateDevice
        case conector
        case haveMultipleURNService
        case id
        case maintenance
        case oauth2
        case saml
        case sendRequestorAuthZ
        case subscriberIdData
        case whitelistDomains
        case wsAPIKey
        case wsMaintenance
        case wsMaintenanceCountry
        case wsNameSpace
        case wsURL
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        description = try container.decode(.description)
        shortName = try container.decode(.shortName)
        apiKey = try container.decode(.apiKey)
        clientType = try container.decode(.clientType)
        devicesLimit = try container.decode(.devicesLimit)
        active = try container.decode(.active)
        canCreateToken = try container.decode(.canCreateToken)
        canCreateDevice = try container.decode(.canCreateDevice)
        conector = try container.decodeIfPresent(.conector)
        haveMultipleURNService = try container.decodeIfPresent(.haveMultipleURNService)
        id = try container.decodeIfPresent(.id)
        maintenance = try container.decodeIfPresent(.maintenance)
        oauth2 = try container.decodeAnyIfPresent(.oauth2)
        saml = try container.decodeAnyIfPresent(.saml)
        sendRequestorAuthZ = try container.decodeIfPresent(.sendRequestorAuthZ)
        subscriberIdData = try container.decodeIfPresent(.subscriberIdData)
        whitelistDomains = try container.decodeArrayIfPresent(.whitelistDomains)
        wsAPIKey = try container.decodeIfPresent(.wsAPIKey)
        wsMaintenance = try container.decodeIfPresent(.wsMaintenance)
        wsMaintenanceCountry = try container.decodeArrayIfPresent(.wsMaintenanceCountry)
        wsNameSpace = try container.decodeIfPresent(.wsNameSpace)
        wsURL = try container.decodeIfPresent(.wsURL)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(description, forKey: .description)
        try container.encode(shortName, forKey: .shortName)
        try container.encode(apiKey, forKey: .apiKey)
        try container.encode(clientType, forKey: .clientType)
        try container.encode(devicesLimit, forKey: .devicesLimit)
        try container.encode(active, forKey: .active)
        try container.encode(canCreateToken, forKey: .canCreateToken)
        try container.encode(canCreateDevice, forKey: .canCreateDevice)
        try container.encode(conector, forKey: .conector)
        try container.encode(haveMultipleURNService, forKey: .haveMultipleURNService)
        try container.encode(id, forKey: .id)
        try container.encode(maintenance, forKey: .maintenance)
        try container.encodeAny(oauth2, forKey: .oauth2)
        try container.encodeAny(saml, forKey: .saml)
        try container.encode(sendRequestorAuthZ, forKey: .sendRequestorAuthZ)
        try container.encode(subscriberIdData, forKey: .subscriberIdData)
        try container.encode(whitelistDomains, forKey: .whitelistDomains)
        try container.encode(wsAPIKey, forKey: .wsAPIKey)
        try container.encode(wsMaintenance, forKey: .wsMaintenance)
        try container.encode(wsMaintenanceCountry, forKey: .wsMaintenanceCountry)
        try container.encode(wsNameSpace, forKey: .wsNameSpace)
        try container.encode(wsURL, forKey: .wsURL)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? IdentityProvider else { return false }
      guard self.description == object.description else { return false }
      guard self.shortName == object.shortName else { return false }
      guard self.apiKey == object.apiKey else { return false }
      guard self.clientType == object.clientType else { return false }
      guard self.devicesLimit == object.devicesLimit else { return false }
      guard self.active == object.active else { return false }
      guard self.canCreateToken == object.canCreateToken else { return false }
      guard self.canCreateDevice == object.canCreateDevice else { return false }
      guard self.conector == object.conector else { return false }
      guard self.haveMultipleURNService == object.haveMultipleURNService else { return false }
      guard self.id == object.id else { return false }
      guard self.maintenance == object.maintenance else { return false }
      guard NSDictionary(dictionary: self.oauth2 ?? [:]).isEqual(to: object.oauth2 ?? [:]) else { return false }
      guard NSDictionary(dictionary: self.saml ?? [:]).isEqual(to: object.saml ?? [:]) else { return false }
      guard self.sendRequestorAuthZ == object.sendRequestorAuthZ else { return false }
      guard self.subscriberIdData == object.subscriberIdData else { return false }
      guard self.whitelistDomains == object.whitelistDomains else { return false }
      guard self.wsAPIKey == object.wsAPIKey else { return false }
      guard self.wsMaintenance == object.wsMaintenance else { return false }
      guard self.wsMaintenanceCountry == object.wsMaintenanceCountry else { return false }
      guard self.wsNameSpace == object.wsNameSpace else { return false }
      guard self.wsURL == object.wsURL else { return false }
      return true
    }

    public static func == (lhs: IdentityProvider, rhs: IdentityProvider) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
