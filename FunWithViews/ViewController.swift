//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var dieOne: UIView!
    @IBOutlet weak var dieTwo: UIView!
    @IBOutlet weak var dieThree: UIView!
    @IBOutlet weak var dieFour: UIView!
    @IBOutlet weak var dieFive: UIView!
    @IBOutlet weak var dieSix: UIView!
    @IBOutlet weak var dieSeven: UIView!
    @IBOutlet weak var redBox: UILabel!
    @IBOutlet weak var orangeBox: UILabel!
    @IBOutlet weak var yellowBox: UILabel!
    @IBOutlet weak var greenBox: UILabel!
    @IBOutlet weak var blueBox: UILabel!
    @IBOutlet weak var purpleBox: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dieOne.hidden = true
        dieTwo.hidden = true
        dieThree.hidden = true
        dieFour.hidden = true
        dieFive.hidden = true
        dieSix.hidden = true
        dieSeven.hidden = true
        redBox.hidden = true
        orangeBox.hidden = true
        yellowBox.hidden = true
        greenBox.hidden = true
        blueBox.hidden = true
        purpleBox.hidden = true
        
        }


    
@IBAction func diceButton(sender: AnyObject) {
    
    let roll = randomDiceRoll()
    
    switch roll{
        case 1 :
            dieOne.hidden = true
            dieTwo.hidden = true
            dieThree.hidden = true
            dieFour.hidden = false
            dieFive.hidden = true
            dieSix.hidden = true
            dieSeven.hidden = true
            
        case 2 :
            dieOne.hidden = true
            dieTwo.hidden = true
            dieThree.hidden = false
            dieFour.hidden = true
            dieFive.hidden = false
            dieSix.hidden = true
            dieSeven.hidden = true
        case 3:
            dieOne.hidden = true
            dieTwo.hidden = true
            dieThree.hidden = false
            dieFour.hidden = false
            dieFive.hidden = false
            dieSix.hidden = true
            dieSeven.hidden = true
        case 4:
            dieOne.hidden = false
            dieTwo.hidden = true
            dieThree.hidden = false
            dieFour.hidden = true
            dieFive.hidden = false
            dieSix.hidden = true
            dieSeven.hidden = false
        case 5:
            dieOne.hidden = false
            dieTwo.hidden = true
            dieThree.hidden = false
            dieFour.hidden = false
            dieFive.hidden = false
            dieSix.hidden = true
            dieSeven.hidden = false
        case 6:
            dieOne.hidden = false
            dieTwo.hidden = false
            dieThree.hidden = false
            dieFour.hidden = true
            dieFive.hidden = false
            dieSix.hidden = false
            dieSeven.hidden = false
        default:
            print("Please tap the 🎲 to start.")
    }
        updateLabelWithRoll(roll)
    
    }
    
    func updateLabelWithRoll(roll:Int){
        let diceScore = String(roll)
      
        if redBox.hidden{
            redBox.text = diceScore
            redBox.hidden = false
        }else if orangeBox.hidden {
            orangeBox.text = diceScore
            orangeBox.hidden = false
        }else if yellowBox.hidden {
            yellowBox.text = diceScore
            yellowBox.hidden = false
        }else if greenBox.hidden {
            greenBox.text = diceScore
            greenBox.hidden = false
        }else if blueBox.hidden {
            blueBox.text = diceScore
            blueBox.hidden = false
        } else {
            purpleBox.text = diceScore
            purpleBox.hidden = false
        }
        }
    
    
    
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }


}
