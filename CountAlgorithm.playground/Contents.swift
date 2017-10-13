//
//  Implement algorithm, which find most common name in array
//
//  Created by Zoia Pribytkova on 10.12.2017.
//

import UIKit

func mostCommonName(in array: [String]) -> String {
    
    var nameCountMap = [String: Int]()
    array.forEach { nameCountMap[$0] = (nameCountMap[$0] ?? 1) + 1 }
    if let (value, _) = nameCountMap.max(by: { $0.1 < $1.1 }) {
        return value
    }
    return ""
}


mostCommonName(in: ["Bob", "Sally", "Bob", "Sam", "Sam", "Michael", "Sam"])
