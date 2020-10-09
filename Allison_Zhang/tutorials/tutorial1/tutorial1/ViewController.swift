//
//  ViewController.swift
//  tutorial1
//
//  Created by Ally Zhang on 9/18/20.
//  Copyright © 2020 Ally Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad()")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear()")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear()")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear((animated))
        print("viewWillDisappear()")
    }
    
    override func viewDidDisappear(_ animated: Bool){
        super.viewDidDisappear(animated)
         print("viewDidDisappear()")
    }


}

