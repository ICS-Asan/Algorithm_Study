import UIKit

func solution(_ n:Int) -> Int {
    var result = 0
    var numbers: Set<Int> = []
    var current = 1
    var limit = 0
    
    if n % 2 == 0 {
        limit = n/2
    } else {
        limit = (n+1)/2
    }
    
    while current <= limit {
        if n % current == 0 {
            numbers.insert(current)
            numbers.insert(n/current)
        }
        current += 1
    }
    
    numbers.forEach {
        result += $0
    }
    
    return result
}

print(solution(12))
print(solution(33))
print(solution(1222))

/*
<정확성  테스트>
 테스트 1 〉    통과 (0.04ms, 16.2MB)
 테스트 2 〉    통과 (0.04ms, 16.1MB)
 테스트 3 〉    통과 (0.05ms, 16.3MB)
 테스트 4 〉    통과 (0.05ms, 16.5MB)
 테스트 5 〉    통과 (0.06ms, 16.5MB)
 테스트 6 〉    통과 (0.05ms, 16.5MB)
 테스트 7 〉    통과 (0.06ms, 16.3MB)
 테스트 8 〉    통과 (0.05ms, 16.3MB)
 테스트 9 〉    통과 (0.05ms, 16.4MB)
 테스트 10 〉    통과 (0.07ms, 16.2MB)
 테스트 11 〉    통과 (0.06ms, 16.2MB)
 테스트 12 〉    통과 (0.06ms, 16.5MB)
 테스트 13 〉    통과 (0.05ms, 16.4MB)
 테스트 14 〉    통과 (0.06ms, 16.2MB)
 테스트 15 〉    통과 (0.06ms, 16.5MB)
 테스트 16 〉    통과 (0.04ms, 16.3MB)
 테스트 17 〉    통과 (0.06ms, 16.3MB)
<채점 결과>
 정확성: 100.0
 합계: 100.0 / 100.0
 */
