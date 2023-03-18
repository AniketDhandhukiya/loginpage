//
//  ViewController.swift
//  loginpage
//
//  Created by R & W on 11/01/17.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButtonOutlet: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        loginbutton()
        
        
    }
    
    @IBAction func needHelpButtonAction(_ sender: UIButton) {
        let navigat = storyboard?.instantiateViewController(withIdentifier: "needHelpPage") as! needHelpPage
        navigationController?.pushViewController(navigat, animated: true)
    }
    
    
    func loginbutton(){
        loginButtonOutlet.layer.cornerRadius = 15
        loginButtonOutlet.layer.masksToBounds = true
    }
    
    @IBAction func loginButtonAction(_ sender: UIButton) {
        if usernameTextField.text == "" && passwordTextField.text == ""{
            alertLogin(title: "Please enter the username & password")
        }
        else if usernameTextField.text == ""{
            alertLogin(title: "Please enter the username")
        }
        else if passwordTextField.text == ""{
            alertLogin(title: "Please enter the password")
        }
        else if usernameTextField.text == "aniket" && passwordTextField.text == "12345"{
            navigate()
        }
        else{
            let alert = UIAlertController(title: "Try again", message: "Incorrect username & password", preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    func alertLogin(title:String){
        let alert = UIAlertController(title: "ERROR", message: title, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "CANCEL", style: .destructive, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func navigate(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "loginEnterPage") as! loginEnterPage
        navigationController?.pushViewController(navigation, animated: true)
        
    }
    
    
    @IBAction func forgotButtonAction(_ sender: UIButton) {
        let message = UIAlertController(title: "Forgot password", message: "Select", preferredStyle: .actionSheet)
        message.addAction(UIAlertAction.init(title: "Continue with mobile", style: .default, handler: { i in
            self.navigat()
        }))
        message.addAction(UIAlertAction.init(title: "Continue with email id", style: .default, handler: {i in self.navigateToEmail()}))
        message.addAction(UIAlertAction.init(title: "Cancel", style: .destructive, handler: nil))
        present(message, animated: true, completion: nil)
        
       
    }
    
    func navigat(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "otpPage") as! otpPage
        navigationController?.pushViewController(navigation, animated: true)
        
    }
    
    func navigateToEmail(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "emailOtpPage") as! emailOtpPage
        navigationController?.pushViewController(navigation, animated: true)
        
    }
    
    @IBAction func signUpButtonAction(_ sender: UIButton) {
        let navigateToSignUp = storyboard?.instantiateViewController(withIdentifier: "signupPage") as! signupPage
        navigationController?.pushViewController(navigateToSignUp, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
//else if password.text.count ?? 0 > 8


