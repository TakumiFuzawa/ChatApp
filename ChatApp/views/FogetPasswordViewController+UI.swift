//
//  FogetPasswordViewController+UI.swift
//  ChatApp
//
//  Created by Takumi Fuzawa on 2020/06/11.
//  Copyright © 2020 Takumi Fuzawa. All rights reserved.
//

import UIKit

extension FogetPasswordViewController {
    
    func setupEmailTextField() {
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor(red: 210 / 255, green: 210 / 255, blue: 210 / 255, alpha: 1).cgColor
        emailTextField.layer.cornerRadius = 3
        emailTextField.clipsToBounds = true
    }
    
    func setupResetButton() {
        resetButton.setTitle("Reset My Password", for: UIControl.State.normal)
        resetButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        resetButton.backgroundColor = UIColor.black
        resetButton.layer.cornerRadius = 5
        resetButton.clipsToBounds = true
        resetButton.setTitleColor(.white, for: UIControl.State.normal)
    }
    
}
