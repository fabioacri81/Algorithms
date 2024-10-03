import Foundation

func findZigZagSequence(a: inout [Int], n: Int) {
    a.sort()

    let mid = ((n + 1) / 2) - 1
    let cpa = a[n-1]
    let cpb = a[mid]
    a[mid] = cpa
    a[n-1] = cpb

    var st = mid + 1
    var ed = n - 2
    while(st <= ed) {
        a[st] = a[ed]
        st = st + 1
        ed = ed - 1
    }

    for i in 0...n {
        if (i > 0) {
            print(" ")
        }
        print(a[i])
    }
}
var array = [2,3,6,7,4,1,5]
findZigZagSequence(a: &array, n: 6)
