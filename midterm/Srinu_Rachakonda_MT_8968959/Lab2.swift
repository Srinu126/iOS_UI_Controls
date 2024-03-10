//
//  UI_ControlsViewController.swift
//  Srinu_Rachakonda_MT_8968959
//
//  Created by user238295 on 3/8/24.
//

import UIKit

class UI_ControlsViewController: UIViewController {
    var screenNumber: Int = 0;
    var step: Int = 1;
    @IBOutlet weak var Label: UILabel!
    
    @IBAction func Step(_ sender: Any) {
        step = 2;
    }
    
    @IBAction func Reset(_ sender: Any) {
        step = 1;
        screenNumber = 0;
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


