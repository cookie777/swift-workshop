//
//  ViewController.swift
//  Component
//
//  Created by Takayuki Yamaguchi on 2020-12-29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        /*
         To create just one button, it requires bunch of codes.
         Besides, what if you create 100 buttons by copy paste and after than you have to change all thier color... ?
         */
        
        // 1. Creeat view
//        let button1 = UIButton()
//        button1.setTitle     (" Button1 " , for: .normal)
//        button1.setTitleColor(.systemBlue, for: .normal)
//        button1.setTitleColor(.systemTeal    , for: .highlighted)
//        button1.titleLabel?.font =  .systemFont(ofSize: 16)
//        button1.backgroundColor = .clear
//        button1.layer.cornerRadius = 16
//        button1.layer.borderWidth = 0.5
//        button1.layer.borderColor = UIColor.systemBlue.cgColor
//
//        // 2. Add to super view
//        view.addSubview(button1)
//
//        // 3. Add constraints.
//        button1.translatesAutoresizingMaskIntoConstraints = false
//        button1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        button1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//
//
        
//
        let myTmeplatebutton1 = TemplateButton(buttonLabel: "Button1")


        view.addSubview(myTmeplatebutton1)
//
//        // 3. Add constraints.
        myTmeplatebutton1.translatesAutoresizingMaskIntoConstraints = false
        myTmeplatebutton1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        myTmeplatebutton1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        

    }
    
    


}

