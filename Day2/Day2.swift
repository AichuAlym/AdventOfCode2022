//
//  Day2.swift
//  AdventsOfCode2022
//
//  Created by Aichurok Alymkulova on 10.05.23.
//

import Foundation

var inputE = """
A Y
B X
C Z
"""

enum GameState: Int {
    case win = 6
    case lose = 0
    case draw = 3
}

enum Sign: Int {
    case rock = 1
    case paper = 2
    case scissors = 3
    
    init?<S: StringProtocol>(rawValue: S) {
        switch rawValue {
        case "A", "X": self = .rock
        case "B", "Y": self = .paper
        case "C", "Z": self = .scissors
        default: fatalError("Unexpected input")
        }
    }
    
    func getResult(_ opponent: Sign) -> GameState {
        switch(self, opponent) {
        case (.rock, .rock), (.paper, .paper), (.scissors, .scissors):
            return .draw
        case (.rock, .scissors), (.paper, .rock), (.scissors, .paper):
            return .win
        default:
            return .lose
        }
    }
}

func run() -> String {
    let input = readString(name: "inputDay2.txt")
    let values = input.split(separator: "\n")
        .map { line in
            let values = line.split(separator: " ")
                .compactMap(Sign.init(rawValue:))
            return (values[0], values[1])
        }
        .map(scoreP1)
        .reduce(0, +)
    print(values)
    return String(values)
}

func scoreP1(values: (Sign, Sign)) -> Int {
    let myValue = values.1.rawValue
    let result = values.1.getResult(values.0)
    return myValue + result.rawValue
}
