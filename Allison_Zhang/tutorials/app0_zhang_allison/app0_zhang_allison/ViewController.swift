//
//  ViewController.swift
//  app0_zhang_allison
//
//  Created by Ally Zhang on 9/10/20.
//  Copyright © 2020 Ally Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
        //button.setTitle("Turn Blue", for:.normal)
        label.text = "blue"
        label.textColor = UIColor.blue
    }
    
}

