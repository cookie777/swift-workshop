//
//  ViewController.swift
//  TestDelegate
//
//  Created by Takayuki Yamaguchi on 2020-12-23.
//

import UIKit

class MinionAViewController: UIViewController, ButtonRulesDelegate{

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        
        
        let bt = BossButton()
        
        bt.delegate = self
        
        view.addSubview(bt)
        
    }

    
    func additonalActionIfTheButtonPressed() {
        print("This is minionA! I'll do the taks instead of you!😤")
    }



}

