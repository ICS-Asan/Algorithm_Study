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
        let mailList = reporters[$0]!.intersection(stoppedIDs)
        result.append(mailList.count)
    }
    
    
    
    return result
}

print(solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2))
print(solution(["con", "ryan"], ["ryan con", "ryan con", "ryan con", "ryan con"], 3))

/*
<정확성  테스트>
테스트 1 〉    통과 (0.22ms, 16.3MB)
테스트 2 〉    통과 (0.32ms, 16.2MB)
테스트 3 〉    통과 (1419.56ms, 37.7MB)
테스트 4 〉    통과 (0.47ms, 16.4MB)
테스트 5 〉    통과 (0.52ms, 16.6MB)
테스트 6 〉    통과 (10.28ms, 16.6MB)
테스트 7 〉    통과 (24.90ms, 17MB)
테스트 8 〉    통과 (49.69ms, 16.8MB)
테스트 9 〉    통과 (619.06ms, 26.5MB)
테스트 10 〉    통과 (530.45ms, 26.1MB)
테스트 11 〉    통과 (1209.64ms, 37.4MB)
테스트 12 〉    통과 (9.33ms, 16.4MB)
테스트 13 〉    통과 (2.35ms, 16.3MB)
테스트 14 〉    통과 (752.39ms, 25.9MB)
테스트 15 〉    통과 (1078.37ms, 32.5MB)
테스트 16 〉    통과 (2.04ms, 16.3MB)
테스트 17 〉    통과 (2.16ms, 16.3MB)
테스트 18 〉    통과 (8.10ms, 16.5MB)
테스트 19 〉    통과 (10.20ms, 16.4MB)
테스트 20 〉    통과 (824.36ms, 26.1MB)
테스트 21 〉    통과 (1338.21ms, 32.4MB)
테스트 22 〉    통과 (0.17ms, 16.2MB)
테스트 23 〉    통과 (0.17ms, 16.3MB)
테스트 24 〉    통과 (0.28ms, 16.6MB)

<채점 결과>
정확성: 100.0
합계: 100.0 / 100.0
*/
