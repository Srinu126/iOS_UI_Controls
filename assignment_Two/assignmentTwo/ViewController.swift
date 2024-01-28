//
//  ViewController.swift
//  assignmentTwo
//
//  Created by user238295 on 1/28/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var userDetails: UITextView!
    @IBOutlet weak var successMessage: UILabel!;
    @IBOutlet weak var country: UITextField!;
    @IBOutlet weak var lastName: UITextField!

    
    
    @IBOutlet weak var firstName: UITextField!
    
    @IBAction func addUser(_ sender: Any) {
        let userInfo = """
Full Name: \(firstName.text!) \(lastName.text!)
Country: \(country.text!)
Age: \(age.text!)
"""
        userDetails.text=userInfo
    }
    
    
    @IBAction func submitUser(_ sender: Any) {
        if(firstName.text!.isEmpty || lastName.text!.isEmpty || country.text!.isEmpty || age.text!.isEmpty){
            successMessage.text = "Complete the missing info!";
        } else {
            successMessage.text = "Successfully Submitted!"
        }
    }
    
    @IBAction func clearUser(_ sender: Any) {
        firstName.text="";
        lastName.text="";
        country.text="";
        age.text="";
        userDetails.text="";
        successMessage.text="";
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

