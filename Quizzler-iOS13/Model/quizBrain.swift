//
//  quizBrain.swift
//  Quizzler-iOS13
//
//  Created by Archit Agarwal on 18/10/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Quiz{
    let quiz = [
        Question(ques:"4 + 2 = 6", ans:"True"),
        Question(ques:"3 + 5 = 8", ans:"True"),
        Question(ques:"5 - 8 = 3", ans:"False")
    ]
    
    var quesNumber = 0;
    var score = 0;
    
    mutating func checkAns(title:String)->Bool{
        if (quesNumber < quiz.count && title == quiz[quesNumber].ans){
            score += 1
            quesNumber += 1
            return true
        }
        quesNumber += 1
        return false
    }
    
    func getQues()->String{
        if(quesNumber<quiz.count){
            return quiz[quesNumber].ques
        }
        else {return ("Your score was " + String(score) + "/" +  String(quiz.count))};
    }
    
    func getProgress()->Float{
        return Float(quesNumber)/Float(quiz.count)
    }
}
 
