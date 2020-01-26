//
//  ViewController.swift
//  BigTips
//
//  Created by Nanar Boursalian on 1/15/20.
//  Copyright © 2020 NanarBoursalian. All rights reserved.
//

//always one ViewController file for each screen on the app

import UIKit

class ViewController: UIViewController {

    //refer to elements of the screen that you want to configure
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    var tipValue = Double()

    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tipValue = defaults.double(forKey: "myTip")
        
        calcNewTip()

    }
    
    @IBAction func onTap(_ sender: Any)
    {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any)
    {
        //get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        //calculate the tip and total
         let tip = bill * tipValue
        let total = bill + tip
        
        //update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    func calcNewTip() //for when you go from settings to the initial page
    {
        let bill = Double(billField.text!) ?? 0
        
        let tip = bill * tipValue
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

