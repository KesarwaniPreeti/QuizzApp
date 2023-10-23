//
//  quizBrain.swift
//  QuizzazApp
//
//  Created by Preeti Kesarwani on 10/18/23.
//

import Foundation
import UIKit


struct QuizBrain{
    var list = [
        Question(image: UIImage(imageLiteralResourceName: "australia"), question: "Who is the Current Prime Minister of Australia?", option: ["Anthony Albanese", "John Howard", "Kevin Rudd", "Scott Morrison"], color: UIColor.black, correctAns: "Anthony Albanese"),

Question(image: UIImage(imageLiteralResourceName: "canada"), question: "Who is the Current Prime Minister of Canada?", option: ["Justin Trudeau", "John Diefenbaker", "R.B Bennett", "Lester B. Pearson"], color: UIColor.black, correctAns: "Justin Trudeau"),

Question(image: UIImage(imageLiteralResourceName: "india"), question: "Who is the Current Prime Minister of India?", option: ["Narendra Modi", "ManMohan Singh", "Atal Bihari Vajpayee", "Indira Gandhi"], color: UIColor.black, correctAns: "Narendra Modi"),

Question(image: UIImage(imageLiteralResourceName: "london"), question: "Who is the Current Prime Minister of London?", option: ["John Major", "David Cameron", "Boris Johnson", "Rishi Sunak"], color: UIColor.black, correctAns: "Rishi Sunak"),

Question(image: UIImage(imageLiteralResourceName: "srilanka"), question: "Who is the Current Prime Minister of Sri Lanka?", option: ["Hon. Mahinda Rajapaksa", "Jayewardene", "Sirimavo Bandaranaike", "Dinesh Gunawardena"], color: UIColor.black, correctAns: "Dinesh Gunawardena"),

Question(image: UIImage(imageLiteralResourceName: "usa"), question: "Who is the Current President of the USA?", option: ["Joe Biden", "John Tyler", "Zachary Taylor", "William McKinley"], color: UIColor.black, correctAns: "Joe Biden")



        
        
        
    ]
    
    

    

    
    var questionNo = 0
    var score = 0
    
    // check Ans
    
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == list[questionNo].correctAns {
            score += 1
            return true
        } else {
            return false
        }
    }
 
    
    // get Score
    func getscore() -> Int{
        
       
        return score
        
        
        
        // questionIncrease
    }
    func getTextQuestion ()-> String {
        return list[questionNo].question
    }
    
    // getPrpgress
    
    func getProgress () -> Float {
        let progress = Float(questionNo + 1) / Float(list.count)
        return progress
        
    }
    
    
    
    func button1()-> String {
        
        return list[questionNo].option[0]
        
        
    }
    func button2()-> String {
        return list[questionNo].option[1]
    }
    func button3()-> String {
        return list[questionNo].option[2]
    }
    func button4()-> String {
        return list[questionNo].option[3]
    }
    
    func getImage()-> UIImage {
        return list[questionNo].image
        
    }
    mutating func nextQuestion ()  {
        if questionNo + 1 < list.count {
            questionNo += 1
            
            
        } else {
            
            
         questionNo = 0
            score = 0
            
            
            
        }
    }
    
    func showScore() {
       
    }
    
}
