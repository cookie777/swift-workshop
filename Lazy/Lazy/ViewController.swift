//
//  ViewController.swift
//  Lazy
//
//  Created by Takayuki Yamaguchi on 2020-12-30.
//

import UIKit

class ViewController: UIViewController {
    
    var button1 :UIButton = {
        let bt = UIButton()
        bt.setTitle     ("bt1" , for: .normal)
        bt.setTitleColor(.systemBlue, for: .normal)
        bt.setTitleColor(.systemTeal    , for: .highlighted)
        bt.titleLabel?.font =  .systemFont(ofSize: 32)
        return bt
    }()
    
    
    var button2 :UIButton = {
        let bt = UIButton()
        bt.setTitle     ("bt2" , for: .normal)
        bt.setTitleColor(.systemBlue, for: .normal)
        bt.setTitleColor(.systemTeal    , for: .highlighted)
        bt.titleLabel?.font =  .systemFont(ofSize: 32)
        return bt
    }()
    
    
    lazy var stackView : UIStackView = {
      let sv = UIStackView(arrangedSubviews: [button1, button2])
      sv.translatesAutoresizingMaskIntoConstraints = false
      sv.axis         = .vertical
      sv.alignment    = .center
      sv.distribution = .equalSpacing

      sv.isLayoutMarginsRelativeArrangement = true
      sv.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
      return sv
    }()
    

    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .cyan

        
        view.addSubview(stackView)
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    
    }


}

