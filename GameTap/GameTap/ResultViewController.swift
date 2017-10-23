//
//  ResultViewController.swift
//  GameTap
//
//  Created by Elena Goroshko on 10/22/17.
//  Copyright © 2017 Elena Goroshko. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var score : Int?

    @IBOutlet weak var labelYourScore: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.labelYourScore.text = String(self.score!)
    }

    
}
