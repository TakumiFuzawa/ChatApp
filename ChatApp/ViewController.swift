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
        let title = "Create New Acount"
        let subtitle = "\n\n\nHello World"
        //fontのレイアウト
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font : UIFont.init(name: "Didot", size: 28)!, NSAttributedString.Key.foregroundColor : UIColor.black])
        let attributedSubTitle = NSMutableAttributedString(string: subtitle, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16), NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.45)])
        attributedText.append(attributedSubTitle)
        //行間を5行あける
        let pargrapStyle = NSMutableParagraphStyle()
        pargrapStyle.lineSpacing = 5
        
        attributedText.addAttribute(NSAttributedString.Key.paragraphStyle, value: pargrapStyle, range: NSMakeRange(0, attributedSubTitle.length))
        titleLable.numberOfLines = 0
        
        titleLable.attributedText = attributedText
        
        let attributedTermsText = NSMutableAttributedString(string: "By clicking 'Create a new acount' you agree to our", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14), NSAttributedString.Key.foregroundColor : UIColor(white: 0, alpha: 0.65)])
        attributedText.append(attributedTermsText)
        
        termsOfServiceLable.attributedText = attributedTermsText
        termsOfServiceLable.numberOfLines = 0
        
        
    }
    
    
}

