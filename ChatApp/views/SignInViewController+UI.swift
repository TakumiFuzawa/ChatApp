//
//  SignInViewController+UI.swift
//  ChatApp
//
//  Created by Takumi Fuzawa on 2020/06/11.
//  Copyright © 2020 Takumi Fuzawa. All rights reserved.
//

import UIKit

extension SignInViewController {
    
    func setupTitleLable() {
        let title = "Sign In"
        //fontのレイアウト
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font : UIFont.init(name: "Didot", size: 28)!, NSAttributedString.Key.foregroundColor : UIColor.black])
        titleTextLable.attributedText = attributedText
    }
    
    func setupEmailTextField() {
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor(red: 210 / 255, green: 210 / 255, blue: 210 / 255, alpha: 1).cgColor
        emailTextField.layer.cornerRadius = 3
        emailTextField.clipsToBounds = true
    }
    
    
    func setupPassTextField() {
        passTextField.layer.borderWidth = 1
        passTextField.layer.borderColor = UIColor(red: 210 / 255, green: 210 / 255, blue: 210 / 255, alpha: 1).cgColor
        passTextField.layer.cornerRadius = 3
        passTextField.clipsToBounds = true
    }
    
    func setupSignInButton() {
        signInButton.setTitle("Sign In", for: UIControl.State.normal)
        signInButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        signInButton.backgroundColor = UIColor.black
        signInButton.layer.cornerRadius = 5
        signInButton.clipsToBounds = true
        signInButton.setTitleColor(.white, for: UIControl.State.normal)
    }
    
    func setupSignUpButton() {
        let attributedText = NSMutableAttributedString(string: "Don't have a acount?  ", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16), NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.65)])
        let attributedSubText = NSMutableAttributedString(string: "Sign Up", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 18), NSAttributedString.Key.foregroundColor : UIColor.black])
        attributedText.append(attributedSubText)
        signUpButton.setAttributedTitle(attributedText, for: UIControl.State.normal)
        
    }
    
}
