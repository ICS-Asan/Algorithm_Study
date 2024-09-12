import Foundation

/*
 <문제 설명>
 문자열 str과 정수 n이 주어집니다.
 str이 n번 반복된 문자열을 만들어 출력하는 코드를 작성해 보세요.
 
 <제한 사함>
 1 ≤ str의 길이 ≤ 10
 1 ≤ n ≤ 5
 */

let inputs = readLine()?.components(separatedBy: " ")

let string = inputs?[0] ?? ""
let count = Int(inputs?[1] ?? "") ?? 0

var totalString = ""

for _ in 1...count {
    totalString += string
}

print(totalString)
/*
 <정확성 테스트>
 테스트 1 〉    통과 (77.91ms, 13.6MB)
 테스트 2 〉    통과 (4.95ms, 14.1MB)
 테스트 3 〉    통과 (5.28ms, 14.1MB)
 
 <채점 결과>
 정확성: 100.0
 합계: 100.0 / 100.0
 */
