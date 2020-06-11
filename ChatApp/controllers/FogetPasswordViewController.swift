//
//  FogetPasswordViewController.swift
//  ChatApp
//
//  Created by Takumi Fuzawa on 2020/06/11.
//  Copyright © 2020 Takumi Fuzawa. All rights reserved.
//

import UIKit

class FogetPasswordViewController: UIViewController {
    
    @IBOutlet var emailLable: UILabel!
    
    @IBOutlet var emailTextField: UITextField!
    
    @IBOutlet var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    func setupUI() {
        
        
        setupEmailTextField()
        setupResetButton()
       
        
    }
    
    @IBAction func dismissActionButton(_ sender: UIButton) {
        
        navigationController?.popViewController(animated: true)
        
    }
    
}
