//
//  FinishGoalVC.swift
//  GoalPost-app
//
//  Created by Hayden Jamieson on 08/01/2018.
//  Copyright © 2018 Hayden Jamieson. All rights reserved.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as? AppDelegate

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // createGoalBtn.translatesAutoresizingMaskIntoConstraints = true
        createGoalBtn.bindToKeyboard()
        pointsTextField.delegate = self
    }

    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    
    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        if pointsTextField.text != nil {
            save { (complete) in
                if complete {
                    print("saved")
                    performSegue(withIdentifier: SHOW_GOALS_VC, sender: self)
                }
            }
        }
    }
    
    func save(completion: (_ finished: Bool) -> () ) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: managedContext)
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTextField.text!)!
        goal.goalProgress = Int32(0)
        
        do {
          try managedContext.save()
            completion(true)
        } catch {
            debugPrint("Could not save \(error.localizedDescription)")
            completion(false)
        }
        
    }
    
    
    
    
}
