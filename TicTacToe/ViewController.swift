//
//  ViewController.swift
//  TicTacToe
//
//  Created by Nino Uzelac on 07/01/2017.
//  Copyright © 2017 Nino Uzelac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game = Game()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let result = game.result {
            // @TODO deskriptivan toString u Result
            state.text = "Gotova igra"
        } else {
            state.text = "Na redu je igrač \(game.currentPlayer)"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var boardButtons: [UIButton]!

    @IBAction func titleButtonTap(_ sender: UIButton) {
        print("tap \(sender.tag)!")
    }
    
    @IBOutlet weak var state: UILabel!
    
    
    @IBAction func reset(_ sender: UIButton) {
//        game = Game()
    }
}

