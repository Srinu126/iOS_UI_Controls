//
//  ViewController.swift
//  Srinu_Rachakonda_MT_8968959
//
//  Created by user238295 on 3/6/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ProfileName: UILabel!
    @IBOutlet weak var HobbyImage: UIImageView!
    @IBOutlet weak var ProfileImage: UIImageView!
    
    @IBOutlet weak var HobbyName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ProfileImage.image = UIImage(named: "Profile")
        ProfileName.text = "Srinu Rachakonda"
        HobbyImage.image = UIImage(named: "hobby")
        HobbyName.text = "Browsing"
        // Do any additional setup after loading the view.
    }


}

