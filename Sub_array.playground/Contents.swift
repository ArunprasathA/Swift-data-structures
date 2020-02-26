

// Find out positive nubers continuous n sub array

let arr = [1, 4, 20, 3, 10, 5]

let k = 33

var start = 0
var sum = 0

for (index, val) in arr.enumerated() {
    sum = sum + val

    while sum > k && start < index  {
        sum = sum - arr[start]
        start = start + 1
    }

    if sum == k {
        print("start - > \(start) to end --> \(index)")
    }
}

print("**************************")

// Handle
// Find out positive and negative continuous sub array

let arr1 = [1, 4, 0, 0, 3, 10, 5]

let sum1 = 3
var start1 = 0
var end = -1
var cur_sum = 0
var hash = [Int: Int]()

for (index, val) in arr1.enumerated() {
    cur_sum = cur_sum + val
    
    if cur_sum - sum1 == 0 {
        start1 = 0
        end = index
        break
    }
    
    if let mVal = hash[cur_sum-sum1] {
        start1 = mVal + 1
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

