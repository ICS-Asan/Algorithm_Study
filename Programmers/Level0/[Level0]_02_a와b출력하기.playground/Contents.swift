import Foundation

/*
 <문제 설명>
 정수 a와 b가 주어집니다. 각 수를 입력받아 입출력 예와 같은 형식으로 출력하는 코드를 작성해 보세요.
 
 <제한 사함>
 - 100,000 ≤ a, b ≤ 100,000
 */

let input = readLine()

if
    let inputNumbers = input?.components(separatedBy: " ").compactMap({ Int($0) }),
    inputNumbers.count == 2,
    inputNumbers[0] >= -100_000,
    inputNumbers[0] <= 100_000,
    inputNumbers[1] >= -100_000,
    inputNumbers[1] <= 100_000
{
    print("a = \(inputNumbers[0])")
    print("b = \(inputNumbers[1])")
}

/*
 <정확성 테스트>
 테스트 1 〉    통과 (4.80ms, 14MB)
 테스트 2 〉    통과 (5.73ms, 14.3MB)
 테스트 3 〉    통과 (4.29ms, 14MB)
 테스트 4 〉    통과 (4.72ms, 14MB)
 테스트 5 〉    통과 (5.15ms, 14MB)
 
 <채점 결과>
 정확성: 100.0
 합계: 100.0 / 100.0
 */

