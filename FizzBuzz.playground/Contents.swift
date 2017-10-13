//
//  Implement algorithm that display numbers from 1 to N.
//  For any number that is divisible by 3 print out the word Fizz.
//  For any number that is divisible by 5 print out the word Buzz.
//  Finally, if number is divisible by both numbers print out FizzBuzz.
//
//  Created by Zoia Pribytkova on 10.12.2017.
//

import UIKit

func fizzBuzzFunction(maxNumber: Int) {
    for number in 1...maxNumber {
        switch number {
        case _ where number % 15 == 0:
            print("\(number) fizzbuzz")
        case _ where number % 3 == 0:
            print("\(number) fizz")
        case _ where number % 5 == 0:
            print("\(number) buzz")
        default:
            print(number)
        }
    }
}

fizzBuzzFunction(maxNumber: 15)
