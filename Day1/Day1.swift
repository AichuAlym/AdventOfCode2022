import Foundation

func maxCalorie() {
    
    let input = readString(name: "input")
    
    let lines = input.split(separator: "\n", omittingEmptySubsequences: false)
    let calories = lines.map { Int($0) ?? 0 }.split(separator: 0).map { nums in
        nums.reduce(0, +)
    }
    
    //Part 1
    let maxCalorie = calories.max()
    print(maxCalorie)
    
    //Part 2
    let summe = calories.sorted().reversed()[0..<3]
    
    let topThree = summe.reduce(0, +)
    print(topThree)
    
  /*let numbers = [[1, 2, 3], [4, 5, 6, 7], [8, 9, 10], [1, 4, 3, 7], [5, 6, 1, 8]]
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
       
    }*/
}
