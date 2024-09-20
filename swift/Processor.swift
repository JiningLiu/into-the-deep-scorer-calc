//
//  Processor.swift
//  INTO THE DEEP Scorer
//
//  Created by Jining Liu on 8/3/24.
//

import Foundation
import Accelerate

struct Processor {
    
    static func calcBlue(game: Game) -> (Int, Int, Int, Int) {
        
        let auto: Int = {
            var total = 0
            if game.blue0AutoLocation != 0 {
                total += 3
            }
            if game.blue1AutoLocation != 0 {
                total += 3
            }
            total += game.blueAutoSamplesNet * 2
            total += game.blueAutoSamplesLow * 4
            total += game.blueAutoSamplesHigh * 8
            total += game.blueAutoSpecimenLow * 6
            total += game.blueAutoSpecimenHigh * 10
            return total
        }()
        
        
        let teleop: Int = {
            var total = 0
            
            total += game.blueTeleopSamplesNet * 2
            total += game.blueTeleopSamplesLow * 4
            total += game.blueTeleopSamplesHigh * 8
            total += game.blueTeleopSpecimenLow * 6
            total += game.blueTeleopSpecimenHigh * 10
            
            return total
        }()
        
        let endgame: Int = {
            var total = 0
            total += EndLocation(rawValue: game.blue0EndLocation)!.points()
            total += EndLocation(rawValue: game.blue1EndLocation)!.points()
            return total
        }()
        
        return (auto, teleop, endgame, auto + teleop + endgame)
    }
    
    static func calcRed(game: Game) -> (Int, Int, Int, Int) {

        let auto: Int = {
            var total = 0
            if game.red0AutoLocation != 0 {
                total += 3
            }
            if game.red1AutoLocation != 0 {
                total += 3
            }
            total += game.redAutoSamplesNet * 2
            total += game.redAutoSamplesLow * 4
            total += game.redAutoSamplesHigh * 8
            total += game.redAutoSpecimenLow * 6
            total += game.redAutoSpecimenHigh * 10
            return total
        }()
        
        
        let teleop: Int = {
            var total = 0
            
            total += game.redTeleopSamplesNet * 2
            total += game.redTeleopSamplesLow * 4
            total += game.redTeleopSamplesHigh * 8
            total += game.redTeleopSpecimenLow * 6
            total += game.redTeleopSpecimenHigh * 10
            
            return total
        }()
        
        let endgame: Int = {
            var total = 0
            total += EndLocation(rawValue: game.red0EndLocation)!.points()
            total += EndLocation(rawValue: game.red1EndLocation)!.points()
            return total
        }()
        
        return (auto, teleop, endgame, auto + teleop + endgame)
    }
}
