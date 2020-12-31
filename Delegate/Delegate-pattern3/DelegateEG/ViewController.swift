//
//  ViewController.swift
//  DelegateEG
//
//  Created by Takayuki Yamaguchi on 2020-12-30.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        let tf = UITextField(frame: .init(x: 100, y: 100, width: 100, height: 100))
        tf.backgroundColor = .blue
        tf.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(tf)
        
        tf.delegate = self
        
        
    }
    

    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("invoked when the field has BeginEditing")
    }



    

}

