//
//  ViewController.swift
//  tippy
//
//  Created by Pande, Madhura on 3/11/17.
//  Copyright © 2017 Pande, Madhura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        print("hello")
        let tipPercent = [0.18,0.2,0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill*tipPercent[tipControl.selectedSegmentIndex]
        let total = bill+tip
        tipLabel.text = String(format: "$%0.2f",tip)
        totalLabel.text = String(format: "$%0.2f",total)
    }
}

