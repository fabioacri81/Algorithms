import Foundation

// input -> grid = ['ebacd', 'fghij', 'olmkn', 'trpqs', 'xywuv']

func gridChallenge(grid: [String]) -> String {

    var sortedArray = grid.map { $0.sorted() }
    let rowCount = sortedArray.count
    let colCount = sortedArray[0].count

    for col in 0..<colCount {
        for row in 1..<rowCount {
            let currentCol = sortedArray[row].index(sortedArray[row].startIndex, offsetBy: col)
            let current = sortedArray[row][currentCol]

            let previousCol = sortedArray[row - 1].index(sortedArray[row - 1].startIndex, offsetBy: col)
            let previous = sortedArray[row - 1][previousCol]

            if current < previous {
                return "NO"
            }
        }
    }

    return "YES"
}

print(gridChallenge(grid: ["mpxz", "abcd", "wlmf"]))
