import UIKit

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var reporters: [String: Set<String>] = [:]
    var reportees: [String: [String]] = [:]
    var stoppedIDs: [String] = []
    var result: [Int] = []
    
    id_list.forEach {
        reporters[$0] = []
        reportees[$0] = []
    }
    
    report.forEach {
        let report = $0.components(separatedBy: " ")
        reporters[report[0]]?.insert(report[1])
    }
    
    reporters.forEach { (reporter, reportee) in
        reportee.forEach { reportees[$0]?.append(reporter) }
    }
    
    reportees.map { (reportee, reporters) in
        if reporters.count >= k {
            stoppedIDs.append(reportee)
        }
    }
    
    id_list.forEach {
        let aa = reporters[$0]!.intersection(stoppedIDs)
        result.append(aa.count)
    }
    
    
    
    return result
}

print(solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2))
print(solution(["con", "ryan"], ["ryan con", "ryan con", "ryan con", "ryan con"], 3))

/*
테스트 1 〉    통과 (0.29ms, 16.3MB)
테스트 2 〉    통과 (0.37ms, 16.3MB)
테스트 3 〉    통과 (1450.35ms, 37.9MB)
테스트 4 〉    통과 (0.49ms, 16.5MB)
테스트 5 〉    통과 (0.53ms, 16.5MB)
테스트 6 〉    통과 (10.70ms, 16.7MB)
테스트 7 〉    통과 (26.12ms, 16.9MB)
테스트 8 〉    통과 (50.63ms, 17.2MB)
테스트 9 〉    통과 (594.06ms, 26.5MB)
테스트 10 〉    통과 (516.37ms, 26.4MB)
테스트 11 〉    통과 (1328.81ms, 37.1MB)
테스트 12 〉    통과 (9.90ms, 16.6MB)
테스트 13 〉    통과 (2.45ms, 16.7MB)
테스트 14 〉    통과 (803.09ms, 26.1MB)
테스트 15 〉    통과 (1380.11ms, 32.7MB)
테스트 16 〉    통과 (1.91ms, 16.5MB)
테스트 17 〉    통과 (3.70ms, 16.7MB)
테스트 18 〉    통과 (8.13ms, 16.6MB)
테스트 19 〉    통과 (10.12ms, 16.8MB)
테스트 20 〉    통과 (762.43ms, 26.2MB)
테스트 21 〉    통과 (1455.16ms, 32.4MB)
테스트 22 〉    통과 (0.16ms, 16.5MB)
테스트 23 〉    통과 (0.17ms, 16.5MB)
테스트 24 〉    통과 (0.17ms, 16.4MB)
 */

//채점 결과
//정확성: 100.0
//합계: 100.0 / 100.0
