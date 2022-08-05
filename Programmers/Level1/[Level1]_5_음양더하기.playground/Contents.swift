import UIKit

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var numbers: [Int] = []
    var result = 0
    
    for index in 0..<absolutes.count {
        if signs[index] == false {
            numbers.append(absolutes[index] * -1)
        } else {
            numbers.append(absolutes[index])
        }
    }
    
    numbers.forEach {
        result += $0
    }
    return result
}

print(solution([4,7,12], [true,false,true]))
print(solution([1,2,3], [false,false,true]))

/*
<정확성  테스트>
 테스트 1 〉    통과 (0.16ms, 16.5MB)
 테스트 2 〉    통과 (0.31ms, 16.5MB)
 테스트 3 〉    통과 (0.16ms, 16.6MB)
 테스트 4 〉    통과 (0.29ms, 16.3MB)
 테스트 5 〉    통과 (0.17ms, 16.5MB)
 테스트 6 〉    통과 (0.16ms, 16.5MB)
 테스트 7 〉    통과 (0.16ms, 16.6MB)
 테스트 8 〉    통과 (0.17ms, 16.5MB)
 테스트 9 〉    통과 (0.19ms, 16.4MB)
 
<채점 결과>
 정확성: 100.0
 합계: 100.0 / 100.0
 */
