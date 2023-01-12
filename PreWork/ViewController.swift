//
//  ViewController.swift
//  PreWork
//
//  Created by Chinmay Bansal on 1/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstNameTextField: UITextField!
    
    @IBOutlet weak var LastNameTextField: UITextField!
    
    @IBOutlet weak var SchoolTextField: UITextField!
    
    @IBOutlet weak var AcademicYear: UISegmentedControl!
    
    
    @IBOutlet weak var PetsCounterLabel: UILabel!
    
    @IBOutlet weak var PetsStepper: UIStepper!
    @IBAction func IncrementPets(_ sender: UIStepper) {
        PetsCounterLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelf(_ sender: UIButton) {
        let year = AcademicYear.titleForSegment(at: AcademicYear.selectedSegmentIndex)
        let intro = "My first name is \(FirstNameTextField.text!) \(LastNameTextField.text!) and I attend \(SchoolTextField.text!). I am currently in my \(year!) year and I own \(PetsCounterLabel.text!) pets. It is \(MorePetsSwitch.isOn) more pets"
        let alert = UIAlertController(title: "My Introduction", message: intro, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    @IBOutlet weak var MorePetsSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

