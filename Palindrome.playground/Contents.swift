import Foundation

func isPalindrome(input: String, reverse: String) -> Bool {
    return input == reverse
}

func palindromeIndex(s: String) -> Int {

    if isPalindrome(input: s, reverse: String(s.reversed())) {
        return -1
    }

    var result: Int = -1

    for (id, i) in s.enumerated() {

        var compareS = s
        let _: String = String(compareS.remove(at: s.index(s.startIndex, offsetBy: id)))
        print(compareS)

        if isPalindrome(input: compareS, reverse: String(compareS.reversed())) {
            return id
        }
    }

    return result
}

print(palindromeIndex(s: "baobab"))
