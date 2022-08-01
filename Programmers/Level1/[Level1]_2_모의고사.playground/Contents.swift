import Foundation

struct Person {
    var name: Int
    var count: Int
}

func solution(_ answers: [Int]) -> [Int] {
    var people: [Person] = []
    let firstPattern: [Int] = [1, 2, 3, 4, 5]
    let secondPattern: [Int] = [2, 1, 2, 3, 2, 4, 2, 5]
    let thirdPattern: [Int] = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var result: [Int] = []

    var firstPerson: [Int] = []
    var secondPerson: [Int] = []
    var thirdPerson: [Int] = []
    
    var firstAnswerCount = 0
    var secondAnswerCount = 0
    var thirdAnswerCount = 0
    
    // Array 타입을 사용할 때 index out of range 주의!!
    for count in 0..<answers.count {
        firstPerson.append(firstPattern[count % 5])
        secondPerson.append(secondPattern[count % 8])
        thirdPerson.append(thirdPattern[count % 10])
    }

    for index in 0..<answers.count {
        if answers[index] == firstPerson[index] {
            firstAnswerCount += 1
        }
        if answers[index] == secondPerson[index] {
            secondAnswerCount += 1
        }
        if answers[index] == thirdPerson[index] {
            thirdAnswerCount += 1
        }
    }
    
    people.append(Person(name: 1, count: firstAnswerCount))
    people.append(Person(name: 2, count: secondAnswerCount))
    people.append(Person(name: 3, count: thirdAnswerCount))
    people.sort { $0.count > $1.count }
    
    for person in people {
        if person.count == 0 {
            continue
        }
        if person.count == people[0].count {
            result.append(person.name)
        }
    }
    
    
    return result
}

print(solution([1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5]))
print(solution([1, 3, 2, 4, 2]))

/*
 <정확성  테스트>
 테스트 1 〉    통과 (0.16ms, 16.3MB)
 테스트 2 〉    통과 (0.23ms, 16.3MB)
 테스트 3 〉    통과 (0.12ms, 16.3MB)
 테스트 4 〉    통과 (0.15ms, 16.6MB)
 테스트 5 〉    통과 (0.20ms, 16.6MB)
 테스트 6 〉    통과 (0.12ms, 16.5MB)
 테스트 7 〉    통과 (0.59ms, 16.7MB)
 테스트 8 〉    통과 (0.43ms, 16.7MB)
 테스트 9 〉    통과 (0.96ms, 16.8MB)
 테스트 10 〉    통과 (0.53ms, 16.5MB)
 테스트 11 〉    통과 (1.58ms, 17.1MB)
 테스트 12 〉    통과 (0.98ms, 16.6MB)
 테스트 13 〉    통과 (0.18ms, 16.2MB)
 테스트 14 〉    통과 (1.03ms, 17.2MB)
 
 <채점 결과>
 정확성: 100.0
 합계: 100.0 / 100.0
*/
