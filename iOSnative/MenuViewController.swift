//
//  MenuViewController.swift
//  SlideInTransition
//
//  Created by Gary Tokman on 1/12/19.
//  Copyright © 2019 Gary Tokman. All rights reserved.
//

import UIKit

class MenuViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let gesture = UITapGestureRecognizer(target: self, action:  #selector (self.closeMenu (_:)))
               self.view.addGestureRecognizer(gesture)
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        leftSwipe.direction = .left
        view.addGestureRecognizer(leftSwipe)
    }
    
    
    
    @objc func closeMenu(_ sender:UITapGestureRecognizer){
        self.dismiss(animated: true, completion: nil)
    }

     @objc func handleSwipe(sender: UISwipeGestureRecognizer) {
        if sender.state == .ended {
            if sender.direction == .left {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
}
