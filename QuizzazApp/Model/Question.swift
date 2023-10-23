//
//  Question.swift
//  QuizzazApp
//
//  Created by Preeti Kesarwani on 10/18/23.
//

import Foundation
import UIKit
/*

class Question {
    let Questionimage : String
    let question : String
    let option1 :String

    let option2 : String
    let option3 : String
    let option4 : String
    let correctAns : Int
    
    
    init(Questionimage: String, question: String, option1: String, option2: String, option3: String, option4: String, correctAns: Int) {
        self.Questionimage = Questionimage
        self.question = question
        self.option1 = option1
        self.option2 = option2
        self.option3 = option3
        self.option4 = option4
        self.correctAns = correctAns
    }
   
 
 }*/

struct Question {
    let image : UIImage
    let question : String
   let  option : [String]
    let color : UIColor
    let correctAns : String
    
    
}



