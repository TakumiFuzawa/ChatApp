//
//  ViewController.swift
//  ChatApp
//
//  Created by Takumi Fuzawa on 2020/06/09.
//  Copyright © 2020 Takumi Fuzawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var titleLable: UILabel!
    
    @IBOutlet var signInFacebookButton: UIButton!
    
    @IBOutlet var signInGoogleButton: UIButton!
    
    @IBOutlet var orLable: UILabel!
    
    @IBOutlet var createNewAcountButton: UIButton!
    
    @IBOutlet var termsOfServiceLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    
    func setupUI() {
        
        setHeaderTitle()
        setupTermsLable()
        setupFacebookButton()
        setupGoogleButton()
        setupNewAcountButton()
        
    }
    
    
}

