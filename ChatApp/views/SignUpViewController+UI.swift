//
//  SignUpViewController+UI.swift
//  ChatApp
//
//  Created by Takumi Fuzawa on 2020/06/11.
//  Copyright © 2020 Takumi Fuzawa. All rights reserved.
//

import UIKit

extension SignUpViewController {
    
    func setupTitleLable() {
        let title = "Sign Up"
        let subtitle = "\n\n\nHello World"
        //fontのレイアウト
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font : UIFont.init(name: "Didot", size: 28)!, NSAttributedString.Key.foregroundColor : UIColor.black])
        let attributedSubTitle = NSMutableAttributedString(string: subtitle, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16), NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.45)])
        attributedText.append(attributedSubTitle)
        titleTextLable.attributedText = attributedText
    }
    
    func setupIcon() {
        iconImage.layer.cornerRadius = 40
        iconImage.clipsToBounds = true
    }
    
    
    func setupUserNameTextField() {
        userNameTextField.layer.borderWidth = 1
        userNameTextField.layer.borderColor = UIColor(red: 210 / 255, green: 210 / 255, blue: 210 / 255, alpha: 1).cgColor
        userNameTextField.layer.cornerRadius = 3
        userNameTextField.clipsToBounds = true
        
    }
    
    
    func setupEmallTextField() {
        emallTextField.layer.borderWidth = 1
        emallTextField.layer.borderColor = UIColor(red: 210 / 255, green: 210 / 255, blue: 210 / 255, alpha: 1).cgColor
        emallTextField.layer.cornerRadius = 3
        emallTextField.clipsToBounds = true
    }
    
    
    func setupPassTextField() {
        passTextField.layer.borderWidth = 1
        passTextField.layer.borderColor = UIColor(red: 210 / 255, green: 210 / 255, blue: 210 / 255, alpha: 1).cgColor
        passTextField.layer.cornerRadius = 3
        passTextField.clipsToBounds = true
    }
    
    func setupSignUpButton() {
        signUpButton.setTitle("Sign Up", for: UIControl.State.normal)
        signUpButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        signUpButton.backgroundColor = UIColor.black
        signUpButton.layer.cornerRadius = 5
        signUpButton.clipsToBounds = true
        signUpButton.setTitleColor(.white, for: UIControl.State.normal)
    }
    
    func setupSignInButton() {
        let attributedText = NSMutableAttributedString(string: "Already have an acount?  ", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16), NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.65)])
        let attributedSubText = NSMutableAttributedString(string: "Sign In", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 18), NSAttributedString.Key.foregroundColor : UIColor.black])
        attributedText.append(attributedSubText)
        signInButton.setAttributedTitle(attributedText, for: UIControl.State.normal)
        
    }
}
