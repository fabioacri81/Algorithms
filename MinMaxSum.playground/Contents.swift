import Foundation

func miniMaxSum(arr: [Int]) -> Void {
    guard arr.count == 5 else {
        fatalError("bad input")
    }

    let sorted = arr.sorted(by: <)
    let wholeSum = sorted.reduce(0, +)
    let max = wholeSum - (sorted.first ?? 0)
    let min = wholeSum - (sorted.last ?? 0)

    print("\(min) \(max)")
}

miniMaxSum(arr: [6,3,5,9,8])
