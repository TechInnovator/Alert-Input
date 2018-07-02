//
//  DoSomethingViewController.swift
//  Alert Input
//
//  Created by Dale Musser on 4/26/16.
//  Copyright © 2016 Swift Developer Academy. All rights reserved.
//

import UIKit

class MultipleChoiceViewController: UIViewController {

    @IBOutlet weak var choiceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func choose(_ sender: AnyObject) {
        // this example uses the .actionSheet style.  It could be set to another style such as .alert
        let alert = UIAlertController(title: "Choice", message: "Choose!", preferredStyle: UIAlertControllerStyle.actionSheet)
        alert.addAction(UIAlertAction(title: "A", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            // handle choice A
            self.choiceLabel.text = "A"
            
        }))
        alert.addAction(UIAlertAction(title: "B", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            // handle choice B
            self.choiceLabel.text = "B"
            
        }))
        alert.addAction(UIAlertAction(title: "C", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            // handle choice C
            self.choiceLabel.text = "C"
            
        }))
        alert.addAction(UIAlertAction(title: "D", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            // handle choice D
            self.choiceLabel.text = "D"
            
        }))
        self.present(alert, animated: true, completion: nil)
    }

}
