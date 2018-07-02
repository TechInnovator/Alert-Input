//
//  DeleteItemViewController.swift
//  Alert Input
//
//  Created by Dale Musser on 4/26/16.
//  Copyright © 2016 Swift Developer Academy. All rights reserved.
//

import UIKit

class DeleteItemViewController: UIViewController {
    
    @IBOutlet weak var deleteStatusLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        deleteStatusLabel.text = ""

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    @IBAction func deleteItem(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Delete Item", message: "Do you want to delete the item?", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: {
            (alertAction) -> Void in
            // handle cancellation of deletion
            self.deleteStatusLabel.text = "item deletion cancelled"
        }))
        alert.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.destructive, handler: {
            (alertAction) -> Void in
            // handle deletion here
            self.deleteStatusLabel.text = "item deleted"
        }))
        self.present(alert, animated: true, completion: nil)
    }
}
