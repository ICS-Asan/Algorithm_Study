import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var multipliedArray: [Int] = []
    
    for index in 0..<a.count {
        multipliedArray.append(a[index] * b[index])
    }
    
    return multipliedArray.reduce(0, { $0 + $1 })
}

/*
<정확성  테스트>
테스트 1 〉    통과 (0.16ms, 16.6MB)
테스트 2 〉    통과 (0.05ms, 16.4MB)
테스트 3 〉    통과 (0.05ms, 16.5MB)
테스트 4 〉    통과 (0.05ms, 16.5MB)
테스트 5 〉    통과 (0.04ms, 16.6MB)
테스트 6 〉    통과 (0.10ms, 16.6MB)
테스트 7 〉    통과 (0.14ms, 16.6MB)
테스트 8 〉    통과 (0.14ms, 16.5MB)
테스트 9 〉    통과 (0.15ms, 16.5MB)

<채점 결과>
정확성: 100.0
합계: 100.0 / 100.0
*/
