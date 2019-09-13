// This function uses the buble sort algorithm
// to sort an array and returns the sorted array and number of steps


func mergeSort(_ elements: [Int]) -> (sortedArray: [Int], steps: Int)? {
    let steps = 0
    guard elements.count > 1 else { return (elements, steps)}

    let midIdx = elements.count / 2
    let leftArray = mergeSort(Array(elements[0..<midIdx]))?.sortedArray
    let rightArray = mergeSort(Array(elements[midIdx..<elements.count]))?.sortedArray
    let sortedElements = merge(left: leftArray!, right: rightArray!)

    return (sortedElements, steps)
}

func merge(left: [Int], right: [Int])-> [Int]{
    var leftIdx = 0
    var rightIdx = 0
    
    var orderedArray = [Int]()
    orderedArray.reserveCapacity(left.count + right.count)
    
    while leftIdx < left.count && rightIdx < right.count {
        if left[leftIdx] < right[rightIdx]{
            orderedArray.append(left[leftIdx])
            leftIdx += 1
        } else if left[leftIdx] > right[rightIdx]{
            orderedArray.append(right[rightIdx])
            rightIdx += 1
        } else {
            orderedArray.append(left[leftIdx])
            leftIdx += 1
            orderedArray.append(right[rightIdx])
            rightIdx += 1
        }
    }
    
    while leftIdx < left.count{
        orderedArray.append(left[leftIdx])
        leftIdx += 1
    }
    
    while rightIdx < right.count{
        orderedArray.append(right[rightIdx])
        rightIdx += 1
    }
    
    return orderedArray
}

var test_case_1 = [1, 2, 3]
var test_case_2 = [21, 4, 1, 3, 9, 20, 25, 6, 21, 14]

if let merge1 = mergeSort(test_case_1) {
    print("Sorted array: \(merge1.sortedArray) in \(merge1.steps) steps")
}

if let merge2 = mergeSort(test_case_2) {
    print("Sorted array: \(merge2.sortedArray) in \(merge2.steps) steps")
}

