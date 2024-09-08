import Foundation

/*
 <문제 설명>
 문자열 str이 주어질 때, str을 출력하는 코드를 작성해 보세요.

 <제한 사함>
 - 1 ≤ str의 길이 ≤ 1,000,000
 - str에는 공백이 없으며, 첫째 줄에 한 줄로만 주어집니다.
 */

let string = readLine()

if
    let string = string,
    string.count >= 1,
    string.count <= 1_000_000
{
    print(string)
}

/*
 <정확성 테스트>
 테스트 1 〉    통과 (4.46ms, 12.4MB)
 테스트 2 〉    통과 (14.40ms, 13.5MB)
 테스트 3 〉    통과 (4.30ms, 12.4MB)
 
 <채점 결과>
 정확성: 100.0
 합계: 100.0 / 100.0
 */
