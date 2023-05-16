//
//  ReadString.swift
//  AdventsOfCode2022
//
//  Created by Aichurok Alymkulova on 15.05.23.
//

import Foundation

func readString(name: String) -> String {
    if let bundlePath = Bundle.main.path(forResource: name, ofType: nil) {
        do {
            let stringContent = try String(contentsOfFile: bundlePath)
            return stringContent
        } catch {
            print("Error: \(error)")
        }
    }
    return ""
}
