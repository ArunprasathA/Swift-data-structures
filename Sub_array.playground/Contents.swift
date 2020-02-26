//
//
//let arr = [1, 4, 20, 3, 10, 5]
//
//let k = 33
//
//var start = 0
//var sum = 0
//
//for (index, val) in arr.enumerated() {
//    sum = sum + val
//
//    while sum > k && start < index  {
//        sum = sum - arr[start]
//        start = start + 1
//    }
//
//    if sum == k {
//        print("start - > \(start) to end --> \(index)")
//    }
//
//}

print("**************************")

// Handle -ve numbers

let arr1 = [1, 4, 0, 0, 3, 10, 5]

let sum = 3
var start = 0
var end = -1
var cur_sum = 0

var hash = [Int: Int]()
for (index, val) in arr1.enumerated() {
    cur_sum = cur_sum + val
    
    if cur_sum - sum == 0 {
        start = 0
        end = index
        break
    }
    
    if let mVal = hash[cur_sum-sum] {
        start = mVal + 1
        end = index
        break
    }
    
    hash[cur_sum] = index
}

if end == -1 {
    print("Not found")
} else {
    print("start - > \(start) to end --> \(end)")
}

