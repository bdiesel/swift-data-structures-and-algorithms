// This function uses the buble sort algorithm
// to sort an array and returns the sorted array and number of steps
func basicBubbleSort(_ elements: [Int]) -> (sortedArray: [Int], steps: Int)? {
    var array = elements
    var steps = 0
    
    for _ in 0..<array.count {
       steps += 1
       for j in 1..<array.count {
            if array[j] < array[j-1]{
                let swp = array[j-1]
                array[j-1] = array[j]
                array[j] = swp
            }
        }
    }
    return ( array, steps )
}

var test_case_1 = [1, 2, 3]
var test_case_2 = [21, 4, 1, 3, 9, 20, 25, 6, 21, 14]

if let bubble = basicBubbleSort(test_case_1) {
    print("Sorted array: \(bubble.sortedArray) in \(bubble.steps) steps")
}

if let bubble = basicBubbleSort(test_case_2) {
    print("Sorted array: \(bubble.sortedArray) in \(bubble.steps) steps")
}
