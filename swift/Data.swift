//
//  Data.swift
//  INTO THE DEEP Scorer
//
//  Created by Jining Liu on 1/30/24.
//

import Foundation

struct Game: Identifiable, Codable, Equatable {
    
    var id: String
    var numericId: Int
    
    var blue0: String
    var blue1: String
    var red0: String
    var red1: String
    var mode: Int
    var final: Bool
    
    var blueAutoSamplesNet: Int
    var blueAutoSamplesLow: Int
    var blueAutoSamplesHigh: Int
    var redAutoSamplesLow: Int
    var redAutoSamplesHigh: Int
    var redAutoSamplesNet: Int
    var blueAutoSpecimenLow: Int
    var blueAutoSpecimenHigh: Int
    var redAutoSpecimenLow: Int
    var redAutoSpecimenHigh: Int
    
    var blue0AutoLocation: Int
    var blue1AutoLocation: Int
    var red0AutoLocation: Int
    var red1AutoLocation: Int
    
    var blueTeleopSamplesNet: Int
    var blueTeleopSamplesLow: Int
    var blueTeleopSamplesHigh: Int
    var redTeleopSamplesNet: Int
    var redTeleopSamplesLow: Int
    var redTeleopSamplesHigh: Int
    var blueTeleopSpecimenLow: Int
    var blueTeleopSpecimenHigh: Int
    var redTeleopSpecimenLow: Int
    var redTeleopSpecimenHigh: Int
    
    var blue0EndLocation: Int
    var blue1EndLocation: Int
    var red0EndLocation: Int
    var red1EndLocation: Int
    
    var blueFoul: Int
    var redFoul: Int
    
    var timestamp: Date
    
    init(id: String = UUID().uuidString, numericId: Int, blue0: String, blue1: String, red0: String, red1: String, mode: Int, final: Bool, blueAutoSamplesNet: Int, blueAutoSamplesLow: Int, blueAutoSamplesHigh: Int, redAutoSamplesLow: Int, redAutoSamplesHigh: Int, redAutoSamplesNet: Int, blueAutoSpecimenLow: Int, blueAutoSpecimenHigh: Int, redAutoSpecimenLow: Int, redAutoSpecimenHigh: Int, blue0AutoLocation: Int, blue1AutoLocation: Int, red0AutoLocation: Int, red1AutoLocation: Int, blueTeleopSamplesNet: Int, blueTeleopSamplesLow: Int, blueTeleopSamplesHigh: Int, redTeleopSamplesLow: Int, redTeleopSamplesHigh: Int, redTeleopSamplesNet: Int, blueTeleopSpecimenLow: Int, blueTeleopSpecimenHigh: Int, redTeleopSpecimenLow: Int, redTeleopSpecimenHigh: Int, blue0EndLocation: Int, blue1EndLocation: Int, red0EndLocation: Int, red1EndLocation: Int, blueFoul: Int, redFoul: Int, timestamp: Date) {
        self.id = id
        self.numericId = numericId
        self.blue0 = blue0
        self.blue1 = blue1
        self.red0 = red0
        self.red1 = red1
        self.mode = mode
        self.final = final
        self.blueAutoSamplesNet = blueAutoSamplesNet
        self.blueAutoSamplesLow = blueAutoSamplesLow
        self.blueAutoSamplesHigh = blueAutoSamplesHigh
        self.redAutoSamplesLow = redAutoSamplesLow
        self.redAutoSamplesHigh = redAutoSamplesHigh
        self.redAutoSamplesNet = redAutoSamplesNet
        self.blueAutoSpecimenLow = blueAutoSpecimenLow
        self.blueAutoSpecimenHigh = blueAutoSpecimenHigh
        self.redAutoSpecimenLow = redAutoSpecimenLow
        self.redAutoSpecimenHigh = redAutoSpecimenHigh
        self.blue0AutoLocation = blue0AutoLocation
        self.blue1AutoLocation = blue1AutoLocation
        self.red0AutoLocation = red0AutoLocation
        self.red1AutoLocation = red1AutoLocation
        self.blueTeleopSamplesNet = blueTeleopSamplesNet
        self.blueTeleopSamplesLow = blueTeleopSamplesLow
        self.blueTeleopSamplesHigh = blueTeleopSamplesHigh
        self.redTeleopSamplesLow = redTeleopSamplesLow
        self.redTeleopSamplesHigh = redTeleopSamplesHigh
        self.redTeleopSamplesNet = redTeleopSamplesNet
        self.blueTeleopSpecimenLow = blueTeleopSpecimenLow
        self.blueTeleopSpecimenHigh = blueTeleopSpecimenHigh
        self.redTeleopSpecimenLow = redTeleopSpecimenLow
        self.redTeleopSpecimenHigh = redTeleopSpecimenHigh
        self.blue0EndLocation = blue0EndLocation
        self.blue1EndLocation = blue1EndLocation
        self.red0EndLocation = red0EndLocation
        self.red1EndLocation = red1EndLocation
        self.blueFoul = blueFoul
        self.redFoul = redFoul
        self.timestamp = timestamp
    }
    
    init(id: String = UUID().uuidString, numericId: Int) {
        self.id = id
        self.numericId = numericId
        self.blue0 = ""
        self.blue1 = ""
        self.red0 = ""
        self.red1 = ""
        self.mode = 0
        self.final = false
        self.blueAutoSamplesNet = 0
        self.blueAutoSamplesLow = 0
        self.blueAutoSamplesHigh = 0
        self.redAutoSamplesLow = 0
        self.redAutoSamplesHigh = 0
        self.redAutoSamplesNet = 0
        self.blueAutoSpecimenLow = 0
        self.blueAutoSpecimenHigh = 0
        self.redAutoSpecimenLow = 0
        self.redAutoSpecimenHigh = 0
        self.blue0AutoLocation = 0
        self.blue1AutoLocation = 0
        self.red0AutoLocation = 0
        self.red1AutoLocation = 0
        self.blueTeleopSamplesNet = 0
        self.blueTeleopSamplesLow = 0
        self.blueTeleopSamplesHigh = 0
        self.redTeleopSamplesLow = 0
        self.redTeleopSamplesHigh = 0
        self.redTeleopSamplesNet = 0
        self.blueTeleopSpecimenLow = 0
        self.blueTeleopSpecimenHigh = 0
        self.redTeleopSpecimenLow = 0
        self.redTeleopSpecimenHigh = 0
        self.blue0EndLocation = 0
        self.blue1EndLocation = 0
        self.red0EndLocation = 0
        self.red1EndLocation = 0
        self.blueFoul = 0
        self.redFoul = 0
        self.timestamp = Date()
    }
    
    init() {
        self.id = UUID().uuidString
        self.numericId = -1
        self.blue0 = ""
        self.blue1 = ""
        self.red0 = ""
        self.red1 = ""
        self.mode = 0
        self.final = false
        self.blueAutoSamplesNet = 0
        self.blueAutoSamplesLow = 0
        self.blueAutoSamplesHigh = 0
        self.redAutoSamplesLow = 0
        self.redAutoSamplesHigh = 0
        self.redAutoSamplesNet = 0
        self.blueAutoSpecimenLow = 0
        self.blueAutoSpecimenHigh = 0
        self.redAutoSpecimenLow = 0
        self.redAutoSpecimenHigh = 0
        self.blue0AutoLocation = 0
        self.blue1AutoLocation = 0
        self.red0AutoLocation = 0
        self.red1AutoLocation = 0
        self.blueTeleopSamplesNet = 0
        self.blueTeleopSamplesLow = 0
        self.blueTeleopSamplesHigh = 0
        self.redTeleopSamplesLow = 0
        self.redTeleopSamplesHigh = 0
        self.redTeleopSamplesNet = 0
        self.blueTeleopSpecimenLow = 0
        self.blueTeleopSpecimenHigh = 0
        self.redTeleopSpecimenLow = 0
        self.redTeleopSpecimenHigh = 0
        self.blue0EndLocation = 0
        self.blue1EndLocation = 0
        self.red0EndLocation = 0
        self.red1EndLocation = 0
        self.blueFoul = 0
        self.redFoul = 0
        self.timestamp = Date()
    }
}

enum AutoLocation: Int, CaseIterable, Codable, Equatable {
    case none = 0
    case ozone = 1
    case azone = 2
    
    func name() -> String {
        switch self {
        case .none:
            return "N/A"
        case .ozone:
            return "O-Zone"
        case .azone:
            return "A-Zone"
        }
    }
    
    func points() -> Int {
        switch self {
        case .none:
            return 0
        case .ozone:
            return 3
        case .azone:
            return 3
        }
    }
}

enum EndLocation: Int, CaseIterable, Codable, Equatable {
    case none = 0
    case ozone = 1
    case azone = 2
    case low = 3
    case high = 4
    
    func name() -> String {
        switch self {
        case .none:
            return "N/A"
        case .ozone:
            return "O-Zone"
        case .azone:
            return "A-Zone"
        case .low:
            return "Low Rung"
        case .high:
            return "High Rung"
        }
    }
    
    func points() -> Int {
        switch self {
        case .none:
            return 0
        case .ozone:
            return 3
        case .azone:
            return 3
        case .low:
            return 15
        case .high:
            return 30
        }
    }
}