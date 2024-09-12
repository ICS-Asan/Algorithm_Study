import Foundation

/*
 <문제 설명>
 두 정수 a, b가 주어질 때 다음과 같은 형태의 계산식을 출력하는 코드를 작성해 보세요.
 a + b = c
 
 <제한 사항>
 1 ≤ a, b ≤ 100
 */

func solution() {
    let input = readLine()

    guard
        let inputStrings = input?.components(separatedBy: " "),
        inputStrings.count == 2,
        let firstNumber = Int(inputStrings[0]),
        firstNumber >= 1,
        firstNumber <= 100,
        let secondNumber = Int(inputStrings[1]),
        secondNumber >= 1,
        secondNumber <= 100
    else { return }

    print("\(firstNumber) + \(secondNumber) = \(firstNumber + secondNumber)")
}

solution()
/*
 <정확성 테스트>
 
 <채점 결과>
 */

