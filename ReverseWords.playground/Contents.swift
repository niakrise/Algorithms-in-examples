//
//  Implement a function that returns this same sentence with every other word reversed
//
//  Created by Zoia Pribytkova on 10.12.2017.
//

import UIKit

func reverseWords(in sentence: String) -> String {
    
    var reversedSentence = sentence
    let range = sentence.startIndex ..< sentence.endIndex
    
    sentence.enumerateSubstrings(in: range, options: .byWords) { (substring, subrange, _, _) in
        if let word = substring {
            reversedSentence.replaceSubrange(subrange, with: word.reversed())
        }
    }
    
    return reversedSentence
}

reverseWords(in: "Hi how are you")
