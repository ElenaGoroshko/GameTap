//
//  StartViewController.swift
//  GameTap
//
//  Created by Elena Goroshko on 10/22/17.
//  Copyright © 2017 Elena Goroshko. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    var score : Int?
    
    @IBOutlet weak var labelLastScore: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        self.score = 0

    }


    @IBAction func backToStartViewControl(_ sender: UIStoryboardSegue){

        switch sender.identifier! {
            case "backToStartFromGame":
                if let dest = sender.source as? GameViewController  {
                    self.score = dest.score!
                }
            case "backToStartFromResult":
                if let dest = sender.source as? ResultViewController   {
                    self.score = dest.score!
                }
            default:
                self.score = 0
            }

        labelLastScore.text = "Last Score : " + String(self.score!)
    }

}
