//
//  signupPage.swift
//  loginpage
//
//  Created by R & W on 20/01/23.
//

import UIKit

class signupPage: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var mobileNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var birthdateTextField: UITextField!
    @IBOutlet weak var genderTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    

    @IBAction func signUpButtonAction(_ sender: UIButton){
        if firstNameTextField.text == ""{
            alert(title: "please enter a first name")
        }
        else if surnameTextField.text == ""{
            alert(title: "please enter a surname")
        }
        else if mobileNumberTextField.text == ""{
            alert(title: "please enter a mobile number")
        }
        else if passwordTextField.text == ""{
            alert(title: "please enter a new password")
        }
        else if genderTextField.text == ""{
            alert(title: "please enter a gender")
        }
        else if birthdateTextField.text == ""{
            alert(title: "please enter the date")
        }
        //else if birthdateTextField.text?.count ?? 0 <= 31{
            alert(title: "wrong date selected , Please check your date")
       // }
       // else if monthTextField.text == ""{
            alert(title: "please enter the month")
       // }
       // else if monthTextField.text?.count ?? 0 < 12{
            alert(title: "wrong Month selected , Please check your month")
       // }
        //else if yearTextField.text == ""{
            alert(title: "please enter the year")
       // }
        //else if yearTextField.text?.count ?? 2011 < 2050{
        //    alert(title: "wrong year selected , Please check your year")
        //}
        
        
            let alrt = UIAlertController(title: "Successfully Sign Up", message: "", preferredStyle: .actionSheet)
            alrt.addAction(UIAlertAction.init(title: "Back to Login", style: .default, handler: {i in self.navigateToLogin()}))
            alrt.addAction(UIAlertAction.init(title: "Cancel", style: .destructive, handler: nil))
            present(alrt, animated: true, completion: nil)
        
    }
    
    func navigateToLogin(){
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    func alert(title:String){
        let alrt = UIAlertController(title: "ERROR", message: title, preferredStyle: .alert)
        alrt.addAction(UIAlertAction.init(title: "Ok", style: .default, handler: nil))
        present(alrt, animated: true, completion: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
