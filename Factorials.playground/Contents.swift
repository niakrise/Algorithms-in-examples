//
//  Implement factorial function
//
//  Created by Zoia Pribytkova on 10.12.2017.
//

import UIKit

func loopFactorial(of value: UInt) -> UInt {
    if value == 0 {
        return 1
    }
    
    var factorial: UInt = 1
    for idx in 1...value {
        factorial *= idx
    }
    return factorial
}

print(loopFactorial(of: 5))
print(loopFactorial(of: 0))

func recursionFactorial(of value: UInt) -> UInt {
    if value == 0 {
        return 1
    }
    return value * recursionFactorial(of: value - 1)
}

print(recursionFactorial(of: 5))
print(recursionFactorial(of: 0))

