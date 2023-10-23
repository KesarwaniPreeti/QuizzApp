//
//  ViewController.swift
//  QuizzazApp
//
//  Created by Preeti Kesarwani on 10/17/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var progressBar: UIProgressView!
    
    @IBOutlet var picture: UIImageView!
    
    @IBOutlet var question: UILabel!
    
    
    @IBOutlet var option1: UIButton!
    
    
    @IBOutlet var option2: UIButton!
    
    @IBOutlet var option3: UIButton!
    
    @IBOutlet var option4: UIButton!
    
    
    @IBOutlet var score: UILabel!
    
    var quizBrain =  QuizBrain()
    var showQuestion : Bool = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        picture.layer.cornerRadius = 20
        picture.layer.masksToBounds = true
        
    }
    
    
    @IBAction func UserAnswerPressed(_ sender: UIButton) {
        
        
        
        let userAnswer = sender.currentTitle!
        
        
        let rightAns = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        
        if rightAns {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
            //wrong Answer
            let genertor = UIImpactFeedbackGenerator(style: .heavy)
            genertor.impactOccurred()
            
        }
        
        option1.isEnabled = false
        option2.isEnabled = false
        option3.isEnabled = false
        option4.isEnabled = false
        
  
            quizBrain.nextQuestion()
            
       
            
   
     
        
        
       
        
        
        
        Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(changeQuestion), userInfo: nil, repeats: false)
        
    }
    
    @objc func changeQuestion(){
        
        question.text = quizBrain.getTextQuestion()
        
        progressBar.progress =  quizBrain.getProgress()
        score.text =  "Score : \(quizBrain.getscore())"
        picture.image =  quizBrain.getImage()
        option1.backgroundColor = UIColor.clear
        option2.backgroundColor = UIColor.clear
        option3.backgroundColor = UIColor.clear
        option4.backgroundColor = UIColor.clear
        option1.isEnabled = true
        option2.isEnabled = true
        option3.isEnabled = true
        option4.isEnabled = true
        loadData()
        
    }
    
    
    
    func loadData (){
        option1.setTitle(quizBrain.button1(), for: .normal)
        option2.setTitle(quizBrain.button2(), for: .normal)
        option3.setTitle(quizBrain.button3(), for: .normal)
        option4.setTitle(quizBrain.button4(), for: .normal)
        
        
        
        
        
    }
   

    
    
    
}
