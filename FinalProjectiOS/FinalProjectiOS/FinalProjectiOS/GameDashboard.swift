//
//  GameDashboard.swift
//  FinalProjectiOS
//
//  Created by user215685 on 3/2/22.
//

import UIKit

class GameDashboard: UIViewController {

    
    @IBOutlet weak var maleCharacterImg: UIImageView!
    @IBOutlet weak var femaleCharacterImg: UIImageView!
    
    var character = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func startGamebtn(_ sender: Any) {
        performSegue(withIdentifier: "toGameDisplay", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toGameDisplay" {
            let destinationVC = segue.destination as? GameDisplay
            destinationVC?.characterSelect = character
        }
    }
    
    
    @IBAction func maleSwitch(_ sender: Any) {
        if (maleCharacterImg .isHidden){
            maleCharacterImg.isHidden = false
            
        } else if (maleCharacterImg .isHidden == false){
            maleCharacterImg.isHidden = true
        }
        character = "male"
    }
    
    @IBAction func femaleSwitch(_ sender: Any) {
        if(femaleCharacterImg .isHidden){
            femaleCharacterImg.isHidden = false
        } else if (femaleCharacterImg .isHidden == false){
            femaleCharacterImg.isHidden = true
        }
        character = "female"
    }
    
}
