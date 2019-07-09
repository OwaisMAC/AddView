//
//  ViewController.swift
//  AddView
//
//  Created by Owais Munawar on 3/29/19.
//  Copyright © 2019 The Dev. All rights reserved.
//

import UIKit

class ViewControllerOne: UIViewController, AddStrengthView {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.addStrengthView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}

