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
import FirebaseStorage

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
    
    //選択したimageを保存するための変数(optional)
    var image: UIImage? = nil
    
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
        
        guard let imageSelected = self.image else {
            print("Image is nil")
            return
        }
        
        Auth.auth().createUser(withEmail: "test3@gmail.com", password: "123456") { (authDataResult, error) in
            if error != nil {
                print(error!.localizedDescription)
                return
            }
            
            guard let iamgeData = imageSelected.jpegData(compressionQuality: 0.4) else {
                
                return
            }
            
            if let authData = authDataResult {
                print(authData.user.email)
                
                var dict: Dictionary<String, Any> = [
                    "uid": authData.user.uid,
                    "email": authData.user.email,
                    "profileImageUrl": "",
                    "status": "Welcom to ChatApp"
                ]
                
                //storage管理
                let storageRef = Storage.storage().reference(forURL: "gs://chatapp-ec006.appspot.com/")
                let storageProfileRef = storageRef.child("profile").child(authData.user.uid)
                
                //新しいUserのProfileImageを保存するためのノード
                let metadata = StorageMetadata()
                //storageMetadataにはdatafileを記述するための共通の優先順位が含まれる
                metadata.contentType = "image/jpg"
                storageProfileRef.putData(iamgeData, metadata: metadata) { (storageMetaData, error) in
                    if error != nil {
                        print(error?.localizedDescription)
                        return
                    }
                    
                    storageProfileRef.downloadURL { (url, error) in
                        if let metaImageUrl = url?.absoluteURL {
                            dict["profileImageUrl"] = metaImageUrl
                            
                            Database.database().reference().child("users").child(authData.user.uid).updateChildValues(dict) { (error, ref) in
                                if error == nil {
                                    print("Done")
                                }
                            }
                        }
                    }
                    
                }
                
                
            }
        }
        
    }
    
    
}
