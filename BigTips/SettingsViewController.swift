//
//  SettingsViewController.swift
//  BigTips
//
//  Created by Nanar Boursalian on 1/25/20.
//  Copyright © 2020 NanarBoursalian. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    
    let defaults = UserDefaults.standard
    
    let tipPercentages = [0.15, 0.18, 0.2]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pickTipVal(_ sender: Any) {
        defaults.set(tipPercentages[tipControl.selectedSegmentIndex], forKey: "myTip")
        
        defaults.synchronize()
    }

}
