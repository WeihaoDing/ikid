//
//  SecondViewController.swift
//  iKid
//
//  Created by gmhding on 2017/11/2.
//  Copyright © 2017年 gmhding. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    
    
    @IBOutlet weak var images: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.images.image = UIImage(named: "Jokes-for-Kids.png")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func punAction(_ sender: UIButton) {
        if sender.titleLabel!.text == "Next" {
            UIView.transition(with: images, duration: 0.6, options: .transitionFlipFromTop, animations: {self.images.image = UIImage(named: "need-a-friend.png")}, completion: nil)
            sender.setTitle("Back", for: .normal)
        } else {
            UIView.transition(with: images, duration: 0.6, options: .transitionFlipFromTop, animations: {self.images.image = UIImage(named: "Jokes-for-Kids.png")}, completion: nil)
            sender.setTitle("Next", for: .normal)
        }
    }
    
    
    
    

}

