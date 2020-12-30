//
//  TemplateButton.swift
//  Component
//
//  Created by Takayuki Yamaguchi on 2020-12-29.
//

import UIKit

class TemplateButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    init(buttonLabel:String) {
        super.init(frame: .zero)
    
        self.setTitle     (" \(buttonLabel) " , for: .normal)
        self.setTitleColor(.systemBlue, for: .normal)
        self.setTitleColor(.systemTeal    , for: .highlighted)
        self.titleLabel?.font =  .systemFont(ofSize: 16)
        self.backgroundColor = .clear
        self.layer.cornerRadius = 16
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.systemBlue.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
