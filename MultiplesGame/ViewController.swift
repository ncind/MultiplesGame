//
//  ViewController.swift
//  MultiplesGame
//
//  Created by Nikhil Pagidala on 4/3/16.
//  Copyright © 2016 Nikhil Pagidala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Properties
    var runningSum = 0
    let maxNumber = 40
    var userMultiple: Int = 0
    
    //IBOutlets
    //Screen 1
    @IBOutlet weak var multiplesImg: UIImageView!
    @IBOutlet weak var multipleText: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    //Screen 2
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    //IBActions
    @IBAction func onPlayButtonPress(sender: AnyObject){
        
        
        if multipleText.text != nil && multipleText != ""{
            
            multiplesImg.hidden = true
            multipleText.hidden = true
            playButton.hidden = true
            
            resultLbl.hidden = false
            addButton.hidden = false
            
            resetLbl()
            userMultiple = Int(multipleText.text!)!
            
        }
        
    }
    
    
    @IBAction func onAddButtonPress(sender: AnyObject) {
    
        
            resultLbl.text = "\(runningSum) + \(userMultiple) = \(runningSum + userMultiple)"
            
            runningSum = runningSum + userMultiple

        if isGameOver(){
            restartGame()
        }
    }
    
    func resetLbl(){
        resultLbl.text = "Please Add to add!"
    
    }
    
    func isGameOver() -> Bool {
        if runningSum >= maxNumber{
            return true
        }else {
        
            return false
        }
    
    }
    
    func restartGame() {
        userMultiple = 0
        multipleText.text = ""
        multipleText.hidden = false
        multiplesImg.hidden = false
        playButton.hidden = false
        resultLbl.hidden = true
        addButton.hidden = true
        resetLbl()
    
    }

}

