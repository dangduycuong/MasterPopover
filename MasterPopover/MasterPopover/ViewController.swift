//
//  ViewController.swift
//  MasterPopover
//
//  Created by duycuong on 5/13/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet var headerButtons: [Button]!
    
    @IBOutlet weak var popUpView: PopupView!
    
    @IBOutlet weak var headerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clickedHeaderButton(sender: Button) {
        headerButtons.forEach { $0.isSelected = false }
        sender.isSelected = !sender.isSelected
        addPopUpView()
        popUpView.layoutWhenButtonClicked(sender)
    }
    
    private func addPopUpView() {
        view.addSubview(popUpView)
        popUpView.fill(left: 0, top: nil, right: 0, bottom: -100)
        popUpView.topAnchor.constraint(equalTo: headerView.bottomAnchor).isActive = true
    }

}

