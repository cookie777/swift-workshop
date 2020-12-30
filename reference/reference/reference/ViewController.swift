//
//  ViewController.swift
//  reference
//
//  Created by Takayuki Yamaguchi on 2020-12-29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        let bt = UIButton()
//        bt.setTitle     ("Good morining" , for: .normal)
//        bt.setTitleColor(.systemBlue, for: .normal)
//        bt.setTitleColor(.systemTeal    , for: .highlighted)
//        bt.titleLabel?.font =  .systemFont(ofSize: 32)
//        makeButton(button: bt)
        
        view.addSubview(bt)
        bt.centerXYin(view)
        
        
    }
//
//    func makeButton(button: UIButton) {
//        button.setTitle     ("Good morining" , for: .normal)
//        button.setTitleColor(.systemBlue, for: .normal)
//        button.setTitleColor(.systemTeal    , for: .highlighted)
//        button.titleLabel?.font =  .systemFont(ofSize: 32)
//
//        return button
//    }
//


}

