//
//  ViewController.swift
//  Mystery Numbers
//
//  Created by Logan Cain on 9/19/17.
//  Copyright © 2017 Logan Cain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentGuessLabel: UILabel!
    
    @IBOutlet weak var tooHighLabel: UILabel!
    
    @IBOutlet weak var tooLowLabel: UILabel!
    
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var upArrowIcon: UIImageView!
    
    @IBOutlet weak var downArrowIcon: UIImageView!
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var guessButton: UIButton!
    @IBOutlet weak var checkImage: UIImageView!
    
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    public var incrementValue: Float = 1.0
    
    @IBOutlet weak var guessSlider: UISlider!
    var currentNumberGuess = 0
    var actualNumberAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        actualNumberAnswer = Int(arc4random_uniform(_: 100))
        guessButton.isHidden = false
        nextButton.isHidden = true
        tooHighLabel.isHidden = true
        tooLowLabel.isHidden = true
        upArrowIcon.isHidden = true
        downArrowIcon.isHidden = true
        checkImage.isHidden = true
        
        
        //This was used to check if the high and low labels worked. Making this false will display the answer.
        //Otherwise this is hidden
        answer.text = String(actualNumberAnswer)
        answer.isHidden = true
        
        

    }
    @IBAction func variableFromSlider(_ sender: UISlider) {
            currentNumberGuess = Int(round(sender.value))
        
    }
    @IBAction func guessSlider(_ sender: UISlider) {
        
        currentGuessLabel.text = String(format: "%.0f", sender.value)
        
        
    }
    
    @IBAction func guessButtonPressed(_ sender: UIButton) {
        
        if (currentNumberGuess == actualNumberAnswer){
            guessButton.isHidden = true
            nextButton.isHidden = false
            tooHighLabel.isHidden = true
            tooLowLabel.isHidden = true
            upArrowIcon.isHidden = true
            downArrowIcon.isHidden = true
            checkImage.isHidden = false
            guessSlider.isHidden = true
            plusButton.isHidden = true
            minusButton.isHidden = true
            
            
            }
        else if currentNumberGuess > actualNumberAnswer {
            tooHighLabel.isHidden = false
            tooLowLabel.isHidden = true
            upArrowIcon.isHidden = false
            downArrowIcon.isHidden = true
            
        }
        else if currentNumberGuess < actualNumberAnswer {
            tooHighLabel.isHidden = true
            tooLowLabel.isHidden = false
            upArrowIcon.isHidden = true
            downArrowIcon.isHidden = false
            
        }
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        actualNumberAnswer = Int(arc4random_uniform(_: 100))
        answer.text = String(actualNumberAnswer)
        guessButton.isHidden = false
        nextButton.isHidden = true
        tooHighLabel.isHidden = true
        tooLowLabel.isHidden = true
        upArrowIcon.isHidden = true
        downArrowIcon.isHidden = true
        checkImage.isHidden = true
        guessSlider.isHidden = false
        plusButton.isHidden = false
        minusButton.isHidden = false
        
        
    }
    
    @IBAction func incrementSlider(_ sender: UIButton) {
        guessSlider.value = guessSlider.value + 1.0
        currentNumberGuess = currentNumberGuess + 1
        var temp = Int(currentGuessLabel.text!)
        currentGuessLabel.text = String(temp! + 1)
    }
    
    
    @IBAction func decrementSlider(_ sender: UIButton) {
        guessSlider.value = guessSlider.value - 1.0
        currentNumberGuess = currentNumberGuess - 1
        var temp = Int(currentGuessLabel.text!)
        currentGuessLabel.text = String(temp! - 1)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

