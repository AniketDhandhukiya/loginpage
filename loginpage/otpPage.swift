//
//  otpPage.swift
//  loginpage
//
//  Created by R & W on 11/01/17.
//

import UIKit

class otpPage: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var mobileNumTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func sendotpAction(_ sender: UIButton) {
        if ((mobileNumTextField.text?.count ?? 0) != 10){
            let alert = UIAlertController(title: "ERROR", message: "please enter the valid mobile number", preferredStyle: .alert)
            alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        let navigation = storyboard?.instantiateViewController(withIdentifier: "enterOtpPage") as! enterOtpPage
        navigationController?.pushViewController(navigation, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
