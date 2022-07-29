//
//  GameEndingDisplay.swift
//  FinalProjectiOS
//
//  Created by user215685 on 3/2/22.
//

import UIKit

class GameEndingDisplay: UIViewController {
    
    @IBOutlet weak var bestEndingImg: UIImageView!
    @IBOutlet weak var normalEndingImg: UIImageView!
    @IBOutlet weak var worstEndingImg: UIImageView!
    
    @IBOutlet weak var endingTypeLabel: UILabel!
    @IBOutlet weak var endingTypeText: UILabel!
    
    var finalScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if(finalScore <= 4) {
            //display worst ending
            worstEndingImg.isHidden = false
            endingTypeLabel.text = "Worst Ending"
            endingTypeText.text = "Why did I have to meet you at all..."
        } else if (finalScore <= 9){
            //display normal ending
            normalEndingImg.isHidden = false
            endingTypeLabel.text = "Normal Ending"
            endingTypeText.text = "I may yet fill this void...someday"
        } else {
            //display best ending
            bestEndingImg.isHidden = false
            endingTypeLabel.text = "Best Ending"
            endingTypeText.text = "The sweetest would be to have you by my side"
        }
        
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
