import Foundation

func reduceTo(n: Int) -> Int {
    String(n).map { Int(String($0)) ?? 0}
        .reduce(0, +)
}

func hasOneDigit(n: Int) -> Bool {
    n < 10
}

func superDigit(n: String, k: Int) -> Int {

    let newN: String = n.count > 7 ? String(n[n.startIndex..<n.index(n.startIndex, offsetBy: 7)]) : n
    var result: Int = reduceTo(n: Int(newN) ?? 0) * k

    while !hasOneDigit(n: result) {
        result = reduceTo(n: result)
    }

    return result
}

print(superDigit(n: "34536", k: 56))
