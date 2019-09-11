// Returns the index in the array, of the desired value
// If the value can't be found, returns nil
func binarySearch(_ array: [Int], value: Int) -> Int? {
    
    var lowerIdx = 0
    var upperIdx = array.count - 1
    
    while lowerIdx <= upperIdx {
        let midIdx = (lowerIdx + upperIdx) / 2
        if array[midIdx] == value {
            return midIdx
        } else if array[midIdx] < value {
            lowerIdx = midIdx + 1
        } else {
            upperIdx = midIdx - 1
        }
    }
    return nil
}

// Test cases
let testArray = [1, 3, 9, 11, 15, 19, 29]
let testVal1 = 25
let testVal2 = 15
print(binarySearch(testArray, value: testVal1)) // Should be nil
print(binarySearch(testArray, value: testVal2)!) // Should be 4
