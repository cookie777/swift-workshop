//
//  ThirdViewController.swift
//  TestDelegate
//
//  Created by Takayuki Yamaguchi on 2020-12-23.
//

import UIKit

class MinionCViewController: UIViewController {

    let bt = BossButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        view.addSubview(bt)
//        bt.delegate = self
    
    }


}

extension MinionCViewController: ButtonRulesDelegate {
    
    func additonalActionIfTheButtonPressed() {
        print("Minion C will do this task instead of boss🤩")
    }
}
