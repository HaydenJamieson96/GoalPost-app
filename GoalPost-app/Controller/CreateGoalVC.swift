//
//  CreateGoalVC.swift
//  GoalPost-app
//
//  Created by Hayden Jamieson on 08/01/2018.
//  Copyright © 2018 Hayden Jamieson. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {

    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var shortTermBtn: UIButton!
    
    var goalType: GoalType = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.bindToKeyboard()
        shortTermBtn.setSelectedColour()
        longTermBtn.setDeselectedColour()
    }

  
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        
    }
    
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermBtn.setSelectedColour()
        longTermBtn.setDeselectedColour()
    }
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        goalType = .longTerm
        longTermBtn.setSelectedColour()
        shortTermBtn.setDeselectedColour()
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
       dismissDetail()
    }
}
