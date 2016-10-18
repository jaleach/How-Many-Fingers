//
//  ViewController.swift
//  How many fingers
//
//  Created by James Leach on 11/30/15.
//  Copyright © 2015 dadio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UserGuessTextField: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func guess(sender: AnyObject) {
        
        let diceRoll = String(arc4random_uniform(6))
        
       
        if diceRoll == UserGuessTextField.text {
            
            resultLabel.text = "You're right!"
            
        } else {
            
            resultLabel.text = "Wrong! It was a " + diceRoll
        }
        
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

