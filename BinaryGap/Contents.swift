import Foundation

func solution(_ N : Int) -> Int {
    
    let binary = String(N, radix: 2)
    print("binary is: \(binary)")

    var gaps = [Int: Int]()
    var setCount = -1
    
    binary.indices.forEach { index in
        if  setCount >= 0,
            String(binary[index]) == "0"
        {
            var value: Int = gaps[setCount] ?? 0
            value += 1
            gaps[setCount] = value
            return
        }
        
        if  String(binary[index]) == "1",
            binary.index(index, offsetBy: 1) < binary.endIndex,
            String(binary[binary.index(index, offsetBy: 1)]) == "0" {
            for char in binary[index..<binary.endIndex] {
                if String(char) == "1" {
                    setCount += 1
                    return
                }
            }
            
        }
        
    }
    print("gaps \(gaps)")
    
    let best = gaps.sorted(by: <).first
    
    if let best = best {
        return best.value
    }
    
    return 0
}

let binaryGapsCount = solution(2354)
print("\nHighest number of gaps is:", binaryGapsCount)
