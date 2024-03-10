//
//  CanadaSceneViewController.swift
//  Srinu_Rachakonda_MT_8968959
//
//  Created by user238295 on 3/8/24.
//

import UIKit

class CanadaSceneViewController: UIViewController {
    
    let defaultCity = UIImage(named: "Canada")
        let cityImages = [
            "calgary": UIImage(named: "Calgary"),
            "halifax": UIImage(named: "Halifax"),
            "montreal": UIImage(named: "Montreal"),
            "toronto": UIImage(named: "Toronto"),
            "vancouver": UIImage(named: "Vancouver"),
            "winnipeg": UIImage(named: "Winnipeg")
        ]

    @IBOutlet weak var NotFoundLabel: UILabel!
    @IBOutlet weak var CityImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        CityImageView.image=defaultCity
        NotFoundLabel.isHidden=true
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var InputField: UITextField!
    
    @IBAction func FindMyCity(_ sender: Any) {
        let inputText = InputField.text?.lowercased() ?? ""
        if let cityImage = cityImages[inputText] {
            NotFoundLabel.isHidden=true
            view.backgroundColor = getRandomColor();
            CityImageView.image=cityImage
            
        } else if inputText.isEmpty {
            NotFoundLabel.isHidden=false
            CityImageView.image=defaultCity
            NotFoundLabel.text="Enter your City...."
        }
        else {
            CityImageView.image=defaultCity
            view.backgroundColor = getRandomColor()
            NotFoundLabel.isHidden=false
            NotFoundLabel.text="Not Found !"
            
        }
      
    }
    func getRandomColor() -> UIColor {
        let lowerBound = CGFloat(0.5)
        let red = CGFloat.random(in: lowerBound...1)
        let green = CGFloat.random(in: lowerBound...1)
        let blue = CGFloat.random(in: lowerBound...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
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
