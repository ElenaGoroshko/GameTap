//
//  GameViewController.swift
//  GameTap
//
//  Created by Elena Goroshko on 10/22/17.
//  Copyright © 2017 Elena Goroshko. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    var score : Int?
    var random : UInt32 = 0

    @IBOutlet weak var labelScore: UILabel!

    @IBOutlet weak var buttonTap: UIButton!
    @IBOutlet weak var buttonTap1: UIButton!
    @IBOutlet weak var buttonTap2: UIButton!



    override func viewDidLoad() {
        super.viewDidLoad()
        score = 0
        labelScore.text = String(score!)

        random = arc4random_uniform(2)

        switch random {
        case 0:
            buttonTap.isHidden = false
            buttonTap1.isHidden = true
            buttonTap2.isHidden = true

        case 1:
            buttonTap.isHidden = true
            buttonTap1.isHidden = false
            buttonTap2.isHidden = true

        default:
            buttonTap.isHidden = true
            buttonTap1.isHidden = true
            buttonTap2.isHidden = false
        }
    }

    @IBAction func buttonTap(_ sender: UIButton) {
        score! += 1
        labelScore.text = String(score!)

        buttonTap.isHidden = true
        if arc4random_uniform(2) == 0 {
            buttonTap1.isHidden = false
        }else{
            buttonTap2.isHidden = false
        }
    }

    @IBAction func buttonTap1(_ sender: UIButton) {
        score! += 1
        labelScore.text = String(score!)

        buttonTap1.isHidden = true
        if arc4random_uniform(2) == 0 {
            buttonTap.isHidden = false
        }else{
            buttonTap2.isHidden = false
        }
    }

    @IBAction func buttonTap2(_ sender: UIButton) {
        score! += 1
        labelScore.text = String(score!)

        buttonTap2.isHidden = true
        if arc4random_uniform(2) == 0 {
            buttonTap.isHidden = false
        }else{
            buttonTap1.isHidden = false
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "ShowResultScreen"
        {
            if let dest = segue.destination as? ResultViewController {
                dest.score = self.score!
            }
        }

    }

}

