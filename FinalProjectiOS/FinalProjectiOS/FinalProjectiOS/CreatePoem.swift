//
//  CreatePoem.swift
//  FinalProjectiOS
//
//  Created by user215685 on 3/2/22.
//

import UIKit

class CreatePoem: UIViewController {

    @IBOutlet weak var poemTitle: UITextField!
    @IBOutlet weak var poemText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "toPoemDisplay", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toPoemDisplay"){
            let destinationVC = segue.destination as? DisplayPoem
            if let poemName = poemTitle.text {
                destinationVC?.titleOfPoem = poemName
            }
            if let textofPoem = poemText.text {
                destinationVC?.poem = textofPoem
            }
        }
    }

}
