//
//  AktivityOneViewController.swift
//  SlideInTransition
//
//  Created by Julius Grau on 22.06.20.
//  Copyright © 2020 Gary Tokman. All rights reserved.
//

import UIKit

class AktivityOneViewController: UIViewController {

    
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

