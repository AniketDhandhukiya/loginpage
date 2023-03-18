//
//  emailOtpPage.swift
//  loginpage
//
//  Created by R & W on 11/01/17.
//

import UIKit

class emailOtpPage: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

}
