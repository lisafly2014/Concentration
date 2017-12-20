//
//  ViewController.swift
//  Concentration
//
//  Created by Ximei Liu on 15/12/17.
//  Copyright © 2017 ucApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var flipCount = 0 {
        didSet{
            flipCountLabel.text = "Flip Count:\(flipCount)"
        }
    }

    @IBOutlet weak var flipCountLabel: UILabel!
    let emojiChoices = ["👻","🎃","🌽","🍉"]
    @IBOutlet var cardButtons: [UIButton]!
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender){
            flipCard(withEMoji: emojiChoices[cardNumber], on: sender)
        }else{
            print("Chosen card is not in cardButtons")
        }
        
        
    }
    
    func flipCard(withEMoji emoji:String, on button: UIButton){
        if button.currentTitle == emoji{
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        }else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}

