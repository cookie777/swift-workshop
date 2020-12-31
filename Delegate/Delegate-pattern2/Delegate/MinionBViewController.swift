//
//  SecondViewController.swift
//  TestDelegate
//
//  Created by Takayuki Yamaguchi on 2020-12-23.
//

import UIKit

class MinionBViewController: UIViewController, ButtonRulesDelegate {

    

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        
        let bt = BossButton()
        view.addSubview(bt)
        
        bt.delegate = self
    }
    
    
    func additonalActionIfTheButtonPressed() {
        print("Minion B will do this task instead of boss😎")
    }


}
