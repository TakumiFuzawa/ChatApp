//
//  SignUpViewController.swift
//  ChatApp
//
//  Created by Takumi Fuzawa on 2020/06/10.
//  Copyright © 2020 Takumi Fuzawa. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {
    
    @IBOutlet var titleTextLable: UILabel!
    
    @IBOutlet var iconImage: UIImageView!
    
    @IBOutlet var userNameLable: UILabel!
    
    @IBOutlet var userNameTextField: UITextField!
    
    @IBOutlet var emallLable: UILabel!
    
    @IBOutlet var emallTextField: UITextField!
    
    @IBOutlet var passLable: UILabel!
    
    @IBOutlet var passTextField: UITextField!
    
    @IBOutlet var signUpButton: UIButton!
    
    @IBOutlet var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() {
        
        setupTitleLable()
        setupIcon()
        setupUserNameTextField()
        setupEmallTextField()
        setupPassTextField()
        setupSignUpButton()
        setupSignInButton()
        
    }
    
    //viewcontrollerの画面へ戻る
    @IBAction func dismissActionButton(_ sender: UIButton) {
        
        navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func signUpButton(_ sender: UIButton) {
        
        
    }
    
    
}
