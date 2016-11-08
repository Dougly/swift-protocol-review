//
//  AddTipViewController.swift
//  swift-protocol-review
//
//  Created by Johann Kerr on 11/8/16.
//  Copyright © 2016 Johann Kerr. All rights reserved.
//

import UIKit

class AddTipViewController: UIViewController {

    @IBOutlet weak var tipTextField: UITextField!
    
    var delegate: UpdateTableViewWithTips?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        
    }

    
    @IBAction func addTipBtnPressed(_ sender: Any) {
        // get tipValueFromTextField
        let amount = tipTextField.text
        // make sure its a Double
        
        self.dismiss(animated: true, completion: nil)
        
        if let amount = amount {
            //calc tip at 15%
            // pass back to the first view controller
            if let amountAsDouble = Double(amount) {
                delegate?.updateTips(tip: amountAsDouble * 0.2)
                
                
            }
        }
        
        
    }

   
}
