//
//  Day2.swift
//  AdventsOfCode2022
//
//  Created by Aichurok Alymkulova on 09.05.23.
//

import Foundation

enum Gamestate {
    case win, lose, draw
}

enum SignRPS {
    case rock, paper, scissors
    
    func getResult(for opposite: SignRPS) -> Gamestate {
        switch(self, opposite) {
        case (.rock, .rock), (.paper, .paper), (.scissors, .scissors):
            return .draw
        case (.rock, .scissors), (.paper, .rock), (.scissors, .paper):
            return .win
        default:
            return .lose
        }
        
      /*switch self {
        case .rock:
            switch oposite {
            case .rock:
                return .draw
            case .paper:
                return .lose
            case .scissors:
                return .win
            }
        case .paper:
            switch oposite {
            case .paper:
                return .draw
            case .rock:
                return .win
            case .scissors:
                return .lose
            }
        case .scissors:
            switch oposite {
            case .scissors:
                return .draw
            case .rock:
                return .lose
            case .paper:
                return .win
            }
        }*/
    }
    
    var emoji: String {
        switch self {
        case .paper:
            return "✋"
        case .rock:
            return "👊"
        case .scissors:
            return "✌️"
        }
    }
}

func randomSign() -> SignRPS {
    let randomChoice = Int.random(in: 0...2)
    let sign = randomChoice
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}
