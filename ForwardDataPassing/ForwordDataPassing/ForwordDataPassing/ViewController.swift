//
//  ViewController.swift
//  ForwordDataPassing
//
//  Created by Iphone XR on 21/11/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let emailTextField =  UITextField()
    let passwordTextField =  UITextField()
    let loginButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "FirstVC"
        
        
        //MARK:- Create a Emailtextfield programatically
       
        emailTextField.placeholder = " Enter your email"
        emailTextField.font = UIFont.systemFont(ofSize: 15)
        emailTextField.tag = 1
        emailTextField.borderStyle = UITextField.BorderStyle.roundedRect
        emailTextField.autocorrectionType = UITextAutocorrectionType.no
        emailTextField.returnKeyType = UIReturnKeyType.done
        emailTextField.clearButtonMode = UITextField.ViewMode.whileEditing
        emailTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        emailTextField.delegate = self
        self.view.addSubview(emailTextField)
        //Add Constraint to Textfield
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: emailTextField, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 200).isActive = true
        NSLayoutConstraint(item: emailTextField, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: emailTextField, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
        
        //MARK:- Create a Passwordtextfield programatically
        
        passwordTextField.placeholder = "Enter your password"
        passwordTextField.font = UIFont.systemFont(ofSize: 15)
        passwordTextField.borderStyle = UITextField.BorderStyle.roundedRect
        passwordTextField.autocorrectionType = UITextAutocorrectionType.no
        passwordTextField.returnKeyType = UIReturnKeyType.done
        passwordTextField.clearButtonMode = UITextField.ViewMode.whileEditing
        passwordTextField.tag = 2
        passwordTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        passwordTextField.delegate = self
        self.view.addSubview(passwordTextField)
        //Add Constraint to Textfield
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: passwordTextField, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 250).isActive = true
        NSLayoutConstraint(item: passwordTextField, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: passwordTextField, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
        
      //MARK:- Create a LoginButton programatically
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(UIColor.blue, for: [])
        loginButton.addTarget(self,
                              action: #selector(loginBtnAction),
                              for: .touchUpInside)
        loginButton.backgroundColor = UIColor.red
        loginButton.center = view.center
       view.addSubview(loginButton)
        self.view.addSubview(loginButton)
        //Add Constraint to Button
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: loginButton, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 350).isActive = true
        NSLayoutConstraint(item: loginButton, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: loginButton, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
        
    }
    
   @objc func loginBtnAction(_ sender:UIButton!){
        //MARK:- Create vc object
       
        let secVC = LoginViewController()
        //  let personEmail = self.emailTextField.text
        let personPassword = self.passwordTextField.text
        secVC.emailNameFronFirstVC = self.emailTextField.text
        secVC.passwordFromFirstVC = self.passwordTextField.text
        //secVC.passwordFromFirstVC = personPassword
        
       //MARK:- step 3 -Append empDic here
        secVC.empDic.append(StudentDetails(fname: emailTextField.text!,lname:  passwordTextField.text!))

        
        self.navigationController?.pushViewController(secVC, animated: true)
        
       
    }
    

}
