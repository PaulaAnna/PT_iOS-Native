//
//  ViewController.swift
//  SlideInTransition
//
//  Created by Gary Tokman on 1/12/19.
//  Copyright © 2019 Gary Tokman. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var nextTCButton: UIButton!
    
    @IBOutlet var menuButton: UIButton!
    
    @IBOutlet var menuBar: UINavigationItem!
    
    var buttonIsSelected = false
    
    let transiton = SlideInTransition()
    var topView: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        nextTCButton.alpha = 0.0
        
        //Hier den Title ändern
        menuBar.title = "Hier dein Title"
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
        self.view.addGestureRecognizer(rightSwipe)
    }
    
    @IBAction func didTapMenu(_ sender: Any) {
        guard let menuViewController = storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController else { return }
        menuViewController.modalPresentationStyle = .overCurrentContext
        menuViewController.transitioningDelegate = self
        present(menuViewController, animated: true)
    }
    
    @IBAction func pressNext(_ sender: Any) {
        if buttonIsSelected {
            buttonIsSelected = false
            UIView.animate(withDuration: 0.5) {
                self.nextTCButton.alpha = 0.0
            }
        }else{
            buttonIsSelected = true
            UIView.animate(withDuration: 0.5) {
                self.nextTCButton.alpha = 1.0
            }
        }
    }
    @objc func handleSwipe(sender: UISwipeGestureRecognizer) {
           if sender.state == .ended {
            switch sender.direction {
            case .right:
                guard let menuViewController = storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController else { return }
                menuViewController.modalPresentationStyle = .overCurrentContext
                menuViewController.transitioningDelegate = self
                present(menuViewController, animated: true)
            case .left:
                self.dismiss(animated: true, completion: nil)
            default:
                break
            }
           }
       }
}
extension HomeViewController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transiton.isPresenting = true
        return transiton
    }

    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transiton.isPresenting = false
        return transiton
    }
}

