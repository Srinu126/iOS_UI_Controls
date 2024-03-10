//
//  QuadraticFormulaCalculateViewController.swift
//  Srinu_Rachakonda_MT_8968959
//
//  Created by user238295 on 3/8/24.
//

import UIKit

class QuadraticFormulaCalculateViewController: UIViewController {
    @IBOutlet weak var InputA: UITextField!
    @IBOutlet weak var InputB: UITextField!
    
    @IBOutlet weak var InputC: UITextField!
    
    
    @IBOutlet weak var ResultView: UITextView!
    
    @IBAction func Clear(_ sender: Any) {
        InputA.text=""
        InputB.text=""
        InputC.text=""
        ResultView.text=""
        ResultView.isHidden = true
    }
    
    @IBAction func Calculate(_ sender: Any) {
        guard let a = Double(InputA.text!) else {
            alertUser(title:"Error", message: "The value you entered for A is Invalid")
            return
        }
        guard let b = Double(InputB.text!) else {
            alertUser(title: "Error", message: "The value you entered for B is Invalid")
            return
        }
        guard let c = Double(InputC.text!) else {
            alertUser(title:"Error", message: "The value you entered for C is Invalid")
            return
        }
        let discriminant = b * b - 4 * a * c
        
        if discriminant > 0 {
            let firstRoot = (-b + sqrt(discriminant))/(2*a)
            let secondRoot = (-b - sqrt(discriminant))/(2*a)
            ResultView.isHidden = false
            ResultView.text = "There are two values for X: \(firstRoot), \(secondRoot)"
        } else if discriminant == 0 {
            let root = -b / (2*a)
            ResultView.isHidden = false
            ResultView.text = "There is only one value for X: \(root)"
        } else {
            ResultView.isHidden = false
            ResultView.text = "There are no results since the discriminant is less than zero"
        }
    }
    func alertUser(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert,animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ResultView.isHidden = true

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
