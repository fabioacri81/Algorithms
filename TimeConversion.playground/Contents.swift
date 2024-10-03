import Foundation

func timeConversion(s: String) -> String {

    let result = s.trimmingCharacters(in: CharacterSet(charactersIn: "PMAM"))

    let isPM = s.contains("PM")
    var newResult = result.split(separator: ":").map { String($0) }
    var hour: Int = Int(newResult.first ?? "") ?? 0
    if isPM {
        if hour != 12 {
            hour += 12
        }
    } else {
        if hour == 12 {
            hour = 0
        }
    }

    newResult[0] = String(format: "%02d", hour)

    return newResult.joined(separator: ":")
}

print(timeConversion(s: "1:12:45PM"))
print(timeConversion(s: "12:12:45AM"))
