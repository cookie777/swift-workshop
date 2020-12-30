//
//  ViewController.swift
//  AutoLayout
//
//  Created by Takayuki Yamaguchi on 2020-12-29.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    /*
     Creating subview :
     - Solustion 2:
     
     This is impossible. You have to write in a function.
     */
    
//    let button2 = UIButton()
//    button2.setTitle     ("bt2" , for: .normal)
//    button2.setTitleColor(.systemBlue, for: .normal)
//    button2.setTitleColor(.systemTeal    , for: .highlighted)
//    button2.titleLabel?.font =  .systemFont(ofSize: 32)
    
    
    
    
    
    
    
    /*
     Creating subview :
     - Solustion 3:
     
     Createing function before hand.
     Requires lazy
     */
    func makeButton() -> UIButton {
        let bt = UIButton()
        bt.setTitle     ("bt3" , for: .normal)
        bt.setTitleColor(.systemBlue, for: .normal)
        bt.setTitleColor(.systemTeal    , for: .highlighted)
        bt.titleLabel?.font =  .systemFont(ofSize: 32)
        return bt
    }
    
    lazy var button3 = makeButton()
    
    
    
    

    
    /*
     Creating subview :
     - Solustion 4:
     
     using closure
     Requires lazy
     */
    let makebutton2 :()->UIButton = {
        let bt = UIButton()
        bt.setTitle     ("bt4" , for: .normal)
        bt.setTitleColor(.systemBlue, for: .normal)
        bt.setTitleColor(.systemTeal    , for: .highlighted)
        bt.titleLabel?.font =  .systemFont(ofSize: 32)
        return bt
    }

    lazy var button4 = makebutton2
    
    
    
    
    
    
    
    
    /*
     Creating subview :
     - Solustion 5:
     
     Why not invoke immediatily?
     Requires lazy
     */
    var button5 :UIButton = {
        let bt = UIButton()
        bt.setTitle     ("bt4" , for: .normal)
        bt.setTitleColor(.systemBlue, for: .normal)
        bt.setTitleColor(.systemTeal    , for: .highlighted)
        bt.titleLabel?.font =  .systemFont(ofSize: 32)
        return bt
    }()


    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        
        /*
         Creating subview :
         - Solustion 1:
         
         This is basic way. simple.
         But you can not access button1 from out side of the class.
         */
        // 1. Creeat view
        let button1 = UIButton()
        button1.setTitle     ("bt1" , for: .normal)
        button1.setTitleColor(.systemBlue, for: .normal)
        button1.setTitleColor(.systemTeal    , for: .highlighted)
        button1.titleLabel?.font =  .systemFont(ofSize: 32)
        
        // 2. Add to super view
        view.addSubview(button1)
        
        // 3. Add constraints.
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    


}

