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

func maxCalorie() {
    
    let input = readString(name: "input")
    
    let lines = input.split(separator: "\n", omittingEmptySubsequences: false)
    var calories = lines.map { Int($0) ?? 0 }.split(separator: 0).map { nums in
        nums.reduce(0, +)
    }
    
    //Part 1
    let maxCalorie = calories.max()
    print(maxCalorie)
    
    //Part 2
    let summe = calories.sorted().reversed()[0..<3]
    
    let topThree = summe.reduce(0, +)
    print(topThree)
    
}
