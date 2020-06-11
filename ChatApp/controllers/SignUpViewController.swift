//
//  SignUpViewController.swift
//  ChatApp
//
//  Created by Takumi Fuzawa on 2020/06/10.
//  Copyright © 2020 Takumi Fuzawa. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

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
        Auth.auth().createUser(withEmail: "test2@gmail.com", password: "123456") { (authDataResult, error) in
            if error != nil {
                print(error!.localizedDescription)
                return
            }
            
            if let authData = authDataResult {
                print(authData.user.email)
                
                let dict: Dictionary<String, Any> = [
                    "uid": authData.user.uid,
                    "email": authData.user.email,
                    "profileImageUrl": "",
                    "status": "Welcom to ChatApp"
                ]
                
                Database.database().reference().child("users").child(authData.user.uid).updateChildValues(dict) { (error, ref) in
                    if error == nil {
                        print("Done")
                    }
                }
            }
        }
        
    }
    
    
}
