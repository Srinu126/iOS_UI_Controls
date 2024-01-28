//
//  ViewController.swift
//  UI_Controls_Lab
//
//  Created by user238295 on 1/19/24.
//

import UIKit

class ViewController: UIViewController {
    var screenNumber: Int = 0;
    var step: Int = 1;
    @IBOutlet weak var Label: UILabel!
    
    @IBAction func Step(_ sender: Any) {
        step = 2;
    }
    
    @IBAction func Reset(_ sender: Any) {
        screenNumber = 0;
        step=1;
        Label.text = String(screenNumber);
    }
    @IBAction func Increment(_ sender: Any) {
        if(step==2){
            screenNumber += 2;
        } else {
            screenNumber += 1;
        }
        Label.text = String(screenNumber);
    }
    
    @IBAction func Decrement(_ sender: Any) {
        if(step == 2){
            screenNumber -= 2;
        } else {
            screenNumber -= 1;
        }
        Label.text = String(screenNumber);
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

