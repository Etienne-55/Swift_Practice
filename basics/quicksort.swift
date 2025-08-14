func quicksort<T: Comparable>(_ a:[T]) -> [T] {
    guard a.count > 1 else { return a }

    let pivot = a[a.count/2]
    let less = a.filter { $0 < pivot }
    let equal = a.filter { $0 == pivot }
    let greater = a.filter { $0 > pivot }

    return quicksort(less) + equal + quicksort(greater)
} 

let list = [12, 33, 1, 14, 77, 8, 90] 
print(list)
let sorted_list = quicksort(list)
print(sorted_list)


public func greet() {
    print("Hello")
}
