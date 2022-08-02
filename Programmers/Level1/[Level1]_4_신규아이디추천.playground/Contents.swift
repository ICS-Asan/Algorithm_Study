import Foundation

func solution(_ new_id: String) -> String {
    // 1단계
    var id = new_id.lowercased()
    let impossibleCharacter = ["~", "!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "=", "+", "[", "{", "]", "}", ":", "?", ",", "<", ">", "/"]
    
    
    // 2단계
    impossibleCharacter.forEach {
        id = id.replacingOccurrences(of: $0, with: "")
    }
    print(id)
    
    // 3단계
    // 어려움 ㅠㅠ
    while id.contains("..") {
        id = id.replacingOccurrences(of: "..", with: ".")
    }
    
    // 4단계
    if id.hasPrefix(".") {
        id.removeFirst()
    }
    
    if id.hasSuffix(".") {
        id.removeLast()
    }
    
    // 5단계
    if id.isEmpty {
        id = "a"
    }
    
    // 6단계
    while id.count > 15 {
        id.removeLast()
    }
    
    if id.hasSuffix(".") {
        id.removeLast()
    }
    
    // 7단계
    if id.count < 3 {
        while id.count < 3 {
            if let last = id.last {
                id += String(last)
            }
        }
    }

    return id
}

print(solution("...!@BaT#*..y.abcdefghijklm"))

/*
<정확성  테스트>
테스트 1 〉    통과 (0.13ms, 16.2MB)
테스트 2 〉    통과 (0.14ms, 16.3MB)
테스트 3 〉    통과 (0.26ms, 16.2MB)
테스트 4 〉    통과 (0.42ms, 16.5MB)
테스트 5 〉    통과 (0.26ms, 16.3MB)
테스트 6 〉    통과 (0.14ms, 16.2MB)
테스트 7 〉    통과 (0.15ms, 16.3MB)
테스트 8 〉    통과 (0.28ms, 16.5MB)
테스트 9 〉    통과 (0.13ms, 16.2MB)
테스트 10 〉    통과 (0.14ms, 16.5MB)
테스트 11 〉    통과 (0.16ms, 16.3MB)
테스트 12 〉    통과 (0.35ms, 16.5MB)
테스트 13 〉    통과 (0.42ms, 16.3MB)
테스트 14 〉    통과 (0.44ms, 16.4MB)
테스트 15 〉    통과 (0.34ms, 16.6MB)
테스트 16 〉    통과 (0.75ms, 16.4MB)
테스트 17 〉    통과 (1.34ms, 16.5MB)
테스트 18 〉    통과 (2.16ms, 16.5MB)
테스트 19 〉    통과 (4.95ms, 16.5MB)
테스트 20 〉    통과 (3.85ms, 16.4MB)
테스트 21 〉    통과 (2.72ms, 16.5MB)
테스트 22 〉    통과 (2.46ms, 16.4MB)
테스트 23 〉    통과 (3.08ms, 16.3MB)
테스트 24 〉    통과 (12.80ms, 16.5MB)
테스트 25 〉    통과 (3.05ms, 16.7MB)
테스트 26 〉    통과 (3.08ms, 16.4MB)

<채점 결과>
정확성: 100.0
합계: 100.0 / 100.0
*/
