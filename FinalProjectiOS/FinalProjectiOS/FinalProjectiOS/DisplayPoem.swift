//
//  DisplayPoem.swift
//  FinalProjectiOS
//
//  Created by user215685 on 3/2/22.
//

import UIKit

class DisplayPoem: UIViewController {
    
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var TextLabel: UILabel!
    
    var poem = ""
    var titleOfPoem = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        TitleLabel.text = titleOfPoem
        TextLabel.text = poem
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
