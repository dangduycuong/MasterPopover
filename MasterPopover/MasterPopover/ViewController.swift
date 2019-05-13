//
//  ViewController.swift
//  MasterPopover
//
//  Created by duycuong on 5/13/19.
//  Copyright © 2019 duycuong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var headerButtons: [Button]!
    
    @IBOutlet weak var popUpView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clickedHeaderButton(sender: UIButton) {
        headerButtons.forEach { $0.isSelected = false }
        sender.isSelected = !sender.isSelected
    }
    
    private func addPopUpView() {
        view.addSubview(popUpView)
        popUpView.fill(left: <#T##CGFloat?#>, top: <#T##CGFloat?#>, right: <#T##CGFloat?#>, bottom: <#T##CGFloat?#>)
    }

}

