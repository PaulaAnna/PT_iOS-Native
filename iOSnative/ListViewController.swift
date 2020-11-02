//
//  ListViewController.swift
//  SlideInTransition
//
//  Copyright © 2020 Gary Tokman. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    @IBOutlet var nextTCButton: UIButton!
    var buttonIsSelected = false
    
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        nextTCButton.alpha = 0.0
        
        let cellNib = UINib(nibName: "NumberTableViewCell", bundle: nil)
        self.tableView.register(cellNib, forCellReuseIdentifier: "numberCell")
            
        tableView.tableFooterView = UIView()
        tableView.reloadData()
        
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
    
   
    
}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1001
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "numberCell", for: indexPath) as! NumberTableViewCell
        cell.numberLabel.text = "Person \(indexPath.row)"
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 35
    }
    
    
}
