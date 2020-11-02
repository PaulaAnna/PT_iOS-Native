//
//  AktivityTwoViewController.swift
//  SlideInTransition
//
//  Copyright © 2020 Gary Tokman. All rights reserved.
//

import UIKit

class AktivityTwoViewController: UIViewController {

    @IBOutlet var nextTC: UIButton!
    
    var buttonIsSelected = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextTC.alpha = 0.0
    }
    
   @IBAction func pressNext(_ sender: Any) {
        if buttonIsSelected {
            buttonIsSelected = false
            UIView.animate(withDuration: 0.5) {
                self.nextTC.alpha = 0.0
            }
        }else{
            buttonIsSelected = true
            UIView.animate(withDuration: 0.5) {
                self.nextTC.alpha = 1.0
            }
        }
    }
    
}
