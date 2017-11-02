//
//  ThirdViewController.swift
//  iKid
//
//  Created by gmhding on 2017/11/2.
//  Copyright © 2017年 gmhding. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var labelKnock: UILabel!
    var index = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func knockAction(_ sender: UIButton) {
        switch index {
        case 0:
            UIView.transition(with:labelKnock, duration: 0.6, options: .transitionFlipFromTop, animations: {self.labelKnock.text = "Who's there?"}, completion: nil)
            index += 1
        case 1:
            UIView.transition(with:labelKnock, duration: 0.6, options: .transitionFlipFromTop, animations: {self.labelKnock.text = "Amish!"}, completion: nil)
            index += 1
        case 2:
            UIView.transition(with:labelKnock, duration: 0.6, options: .transitionFlipFromTop, animations: {self.labelKnock.text = "Amish who?"}, completion: nil)
            index += 1
        case 3:
            UIView.transition(with:labelKnock, duration: 0.6, options: .transitionFlipFromTop, animations: {self.labelKnock.text = "Awwww How sweet. I miss you too."}, completion: nil)
            index += 1
            sender.setTitle("Back", for: .normal)
        default:
            UIView.transition(with:labelKnock, duration: 0.6, options: .transitionFlipFromTop, animations: {self.labelKnock.text = "Who's there?"}, completion: nil)
            index = 0
            sender.setTitle("Next", for: .normal)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
