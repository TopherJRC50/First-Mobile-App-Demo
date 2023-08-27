//
//  ViewController.swift
//  First Project
//
//  Created by Chris Rodriguez on 8/26/23.
//

import UIKit

class ViewController: UIViewController {

    //Outlets
    @IBOutlet weak var MorePetsSwitch: UISwitch!
    @IBOutlet weak var MorePetsStepper: UIStepper!
    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var SchoolNameTextField: UITextField!
    @IBOutlet weak var YearSegmentedControll: UISegmentedControl!
    
    @IBOutlet weak var NumberofPetsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //Actions
    @IBAction func StepperDidChange(_ sender: UIStepper) {
        
        NumberofPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func IntroduceMeDidTapped(_ sender: UIButton) {
        let year = YearSegmentedControll.titleForSegment(at: YearSegmentedControll.selectedSegmentIndex)
        
        let introduction = "My name is \(FirstNameTextField.text!) \(LastNameTextField.text!) and I attend \(SchoolNameTextField.text!). I am Currently in my \(year!) year and I own \(NumberofPetsLabel.text!) dogs. It is \(MorePetsSwitch.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
}

