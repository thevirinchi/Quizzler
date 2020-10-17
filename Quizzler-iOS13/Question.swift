//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Archit Agarwal on 18/10/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    let ques: String
    let ans: String
    
    init(ques:String, ans:String) {
        self.ques = ques
        self.ans = ans
    }
}
