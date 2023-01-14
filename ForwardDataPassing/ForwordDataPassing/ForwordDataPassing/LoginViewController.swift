//
//  LoginViewController.swift
//  ForwordDataPassing
//
//  Created by Iphone XR on 21/11/22.
//

import UIKit
//MARK:- step 1 - Create model  for dictioney access globaly
struct StudentDetails {
    var fname:String = ""
    var lname:String = ""
}
class LoginViewController: UIViewController {
    
    let emailLabel = UILabel()
    let passwordLabel = UILabel()
    
    let nameLabel2 = UILabel()
    let lastNameLabel2 = UILabel()
    //MARK:- Create variables
    var emailNameFronFirstVC:String?
    var passwordFromFirstVC:String?
    //step 2 - create dictionary variable
    var empDic = [StudentDetails]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "SecondVC"
        //navigationItem.hidesBackButton = true
        
        //MARK: Create email Label
        
        emailLabel.numberOfLines = 0
        emailLabel.textAlignment = .center
        emailLabel.sizeToFit()
        emailLabel.backgroundColor = UIColor.white
        self.view.addSubview(emailLabel)
        //Add Constraint to Label
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: emailLabel, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 150).isActive = true
        NSLayoutConstraint(item: emailLabel, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: emailLabel, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -20).isActive = true
        
        //MARK: Create password Label
        passwordLabel.numberOfLines = 0
        passwordLabel.textAlignment = .center
        passwordLabel.sizeToFit()
        passwordLabel.backgroundColor = UIColor.white
        self.view.addSubview(passwordLabel)
        //Add Constraint to Label
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: passwordLabel, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 200).isActive = true
        NSLayoutConstraint(item: passwordLabel, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: passwordLabel, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -20).isActive = true
        
        //MARK: Create label for dictionary
        nameLabel2.text = "enter your name2"
        nameLabel2.numberOfLines = 0
        
        nameLabel2.textAlignment = .center
        nameLabel2.sizeToFit()
        nameLabel2.backgroundColor = UIColor.white
        self.view.addSubview(nameLabel2)
        //Add Constraint to Label
        nameLabel2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: nameLabel2, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 250).isActive = true
        NSLayoutConstraint(item: nameLabel2, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: nameLabel2, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -20).isActive = true
        
        
        //MARK:-  label here
        lastNameLabel2.text = "enter your lastname2"
        lastNameLabel2.numberOfLines = 0
        
        lastNameLabel2.textAlignment = .center
        lastNameLabel2.sizeToFit()
        lastNameLabel2.backgroundColor = UIColor.white
        self.view.addSubview(lastNameLabel2)
        //Add Constraint to Label
        lastNameLabel2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: lastNameLabel2, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 300).isActive = true
        NSLayoutConstraint(item: lastNameLabel2, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: lastNameLabel2, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -20).isActive = true
        
        
        
        self.emailLabel.text = emailNameFronFirstVC
        self.passwordLabel.text = passwordFromFirstVC
        
        //step 4- access dictionary here
        nameLabel2.text = empDic[0].fname
        lastNameLabel2.text = empDic[0].lname
    }
    
}
