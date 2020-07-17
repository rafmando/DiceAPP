//
//  ViewController.swift
//  DiceApp
//
//  Created by Rafael Marques on 16/07/2020.
//  Copyright © 2020 Rafael Marques. All rights reserved.
//

import UIKit

var dice1index:Int = 0
var dice2index:Int = 0

let DiceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]

class ViewController: UIViewController {
    @IBOutlet weak var Dice1: UIImageView!
    @IBOutlet weak var Dice2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func RollButtonPressed(_ sender:UIButton) {
        
        
        dice1index = Int(arc4random_uniform(6))
        dice2index = Int(arc4random_uniform(6))
        
        print (dice1index)
        
        Dice1.image = UIImage(named: DiceArray[dice1index])
        
        Dice2.image = UIImage(named:DiceArray[dice2index])
        
        
        
    }
    
}

