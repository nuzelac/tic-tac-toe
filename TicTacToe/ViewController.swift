//
//  ViewController.swift
//  TicTacToe
//
//  Created by Nino Uzelac on 07/01/2017.
//  Copyright © 2017 Nino Uzelac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var boardButtons: [UIButton]!

    @IBAction func titleButtonTap(_ sender: UIButton) {
    }
    
    @IBOutlet weak var state: UILabel!
    
    
    @IBAction func reset(_ sender: UIButton) {
    }
}

