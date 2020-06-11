//
//  SignInViewController.swift
//  ChatApp
//
//  Created by Takumi Fuzawa on 2020/06/11.
//  Copyright © 2020 Takumi Fuzawa. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet var titleTextLable: UILabel!
    
    @IBOutlet var emailLable: UILabel!
    
    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var passLable: UILabel!
    
    @IBOutlet var passTextField: UITextField!
    
    @IBOutlet var signInButton: UIButton!
    
    @IBOutlet var signUpButton: UIButton!
    
    @IBOutlet var fogetPassButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    func setupUI() {
        
        setupTitleLable()
        setupEmailTextField()
        setupPassTextField()
        setupSignUpButton()
        setupSignInButton()
        
    }
    
    //SignUp画面へ戻る
    @IBAction func dismissActionButton(_ sender: UIButton) {
        
        navigationController?.popViewController(animated: true)
        
    }
    
    
}
