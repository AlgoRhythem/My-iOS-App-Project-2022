//
//  Dashboard.swift
//  FinalProjectiOS
//
//  Created by user215685 on 3/2/22.
//

import UIKit

class Dashboard: UIViewController {

    
    @IBOutlet weak var browseImage: UIImageView!
    @IBOutlet weak var playImage: UIImageView!
    @IBOutlet weak var browseRounded: UIButton!
    @IBOutlet weak var playRounded: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Adjust ImageView Radius and Border:
        browseImage.layer.cornerRadius = 25
        browseImage.layer.borderWidth = 1.5
        browseImage.layer.borderColor = CGColor.init(red: 1.0, green: 0.4, blue: 0.4, alpha: 1.0)
        playImage.layer.cornerRadius = 25
        playImage.layer.borderWidth = 1.5
        playImage.layer.borderColor = CGColor.init(red: 0.4, green: 0.3, blue: 0.5, alpha: 1.0)
        
        //Adjust Button Radius:
        playRounded.layer.cornerRadius = 25
        browseRounded.layer.cornerRadius = 25
        
    }
    
    
    

}
