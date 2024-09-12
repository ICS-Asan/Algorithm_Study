import Foundation

/*
 <문제 설명>
 영어 알파벳으로 이루어진 문자열 str이 주어집니다.
 각 알파벳을 대문자는 소문자로 소문자는 대문자로 변환해서 출력하는 코드를 작성해 보세요.
 
 <제한 사함>
 1 ≤ str의 길이 ≤ 20
 str은 알파벳으로 이루어진 문자열입니다.
 */

func solution() {
    let input = readLine() ?? ""

    guard
        input.count >= 1,
        input.count <= 20
    else { return }

    let convertedCharacters = input.map { character -> String in
        if character.isLowercase {
            return character.uppercased()
        } else {
            return character.lowercased()
        }
    }

    let convertedString = convertedCharacters.joined()
    print(convertedString)
}

solution()


/*
 <정확성 테스트>
 테스트 1 〉    통과 (6.49ms, 13MB)
 테스트 2 〉    통과 (4.84ms, 13MB)
 테스트 3 〉    통과 (4.83ms, 13.1MB)
 테스트 4 〉    통과 (7.09ms, 12.9MB)
 
 <채점 결과>
 정확성: 100.0
 합계: 100.0 / 100.0
 */
