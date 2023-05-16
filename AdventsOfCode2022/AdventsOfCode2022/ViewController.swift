//
//  ViewController.swift
//  AdventsOfCode2022
//
//  Created by Aichurok Alymkulova on 03.05.23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        maxCalorie()
       // ab()
       // print(result /= 2)
    }
    
    var result = 20
    

    let numbers = [[1, 2, 3], [4, 5, 6, 7], [8, 9, 10], [1, 4, 3, 7], [5, 6, 1, 8]]

    // Schritt 1
    var sums: [Int] = []

    func ab() {
        for array in numbers {
            let sum = array.reduce(0, +)
            sums.append(sum)
        }

        sums.sort(by: >)
        let topThree = Array(sums.prefix(3))
        
        print(sums)
        print(topThree)
        
    }
}
