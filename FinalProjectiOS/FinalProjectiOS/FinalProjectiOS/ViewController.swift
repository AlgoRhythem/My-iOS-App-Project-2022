//
//  ViewController.swift
//  FinalProjectiOS
//
//  Created by user215685 on 3/2/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var splashLogo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Create a timed Delay:
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
            self.performSegue(withIdentifier: "toDashboard", sender: nil)
        }
        
        //Animate UILabel splashLogo:
        var bounds = splashLogo.bounds
        splashLogo.font = splashLogo.font.withSize(35)
        bounds.size = splashLogo.intrinsicContentSize
        splashLogo.bounds = bounds
        let scaleX = splashLogo.frame.size.width / bounds.size.width
        let scaleY = splashLogo.frame.size.height / bounds.size.height
        splashLogo.transform = CGAffineTransform(scaleX: scaleX, y: scaleY)
        
        UILabel.animate(withDuration: 2.2){
            self.splashLogo.transform = CGAffineTransform(scaleX: 2, y: 2)
        }
        
    }


}

