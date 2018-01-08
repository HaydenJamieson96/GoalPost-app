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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        
    }
    
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
       dismissDetail()
    }
}
