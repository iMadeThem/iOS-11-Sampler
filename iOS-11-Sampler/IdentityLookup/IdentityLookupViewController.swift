//
//  IdentityLookupViewController.swift
//  iOS-11-Sampler
//
//  Created by Artem Novichkov on 18/06/2017.
//  Copyright © 2017 Artem Novichkov. All rights reserved.
//

import UIKit

class IdentityLookupViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func filterButtonAction(_ sender: Any) {
        UserDefaults(suiteName: "group.com.artemnovichkov.iOS-11-Sampler")?.blockedNumber = textField.text
    }
}

extension UserDefaults {
    
    var blockedNumber: String? {
        get { return string(forKey: #function) }
        set { set(newValue, forKey: #function) }
    }
}
