// return the contents of the input array sorted least to greatest
func quicksort(_ input: [Int], low: Int, high: Int) -> [Int] {
    guard input.count > 1 else { return input}
  
    
    // this is a copy of the input so its contents can be modified
    var result = input
    
    // check the base case: low is less than high
    if low < high{
        let pivot = input[high]
        var i = low
        
        for j in low..<high{
            if result[j] <= pivot {
                (result[i], result[j]) = (result[j], result[i])
                i += 1
            }
        }
        (result[i], result[high]) = (result[high], result[i])
        result = quicksort(result, low: low, high: i-1)
        result = quicksort(result, low: low + 1, high: high)
    }

    return result
}

// Test case
var testArray = [21, 4, 1, 3, 9, 20, 25, 6, 21, 14]
print(quicksort(testArray, low: 0, high: testArray.count - 1))

