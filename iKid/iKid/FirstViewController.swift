//
//  FirstViewController.swift
//  iKid
//
//  Created by gmhding on 2017/11/2.
//  Copyright © 2017年 gmhding. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var lableGood: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextPressed(_ sender: UIButton) {
        if (sender.titleLabel!.text == "Next") {
            UIView.transition(with: lableGood, duration: 0.6, options: .transitionFlipFromTop, animations: {self.lableGood.text = "Of course, a house doesn’t jump at all."}, completion: nil)
            sender.setTitle("Back", for: .normal)
        } else {
            UIView.transition(with: lableGood, duration: 0.6, options: .transitionFlipFromTop, animations: {self.lableGood.text = "Can a kangaroo jump higher than a house? "}, completion: nil)
            sender.setTitle("Next", for: .normal)
        }
    }
    
}

