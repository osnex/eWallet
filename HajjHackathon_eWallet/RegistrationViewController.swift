//
//  RegistrationViewController.swift
//  HajjHackathon_eWallet
//
//  Created by Fadhel Alanazi on 20/11/1439 AH.
//  Copyright © 1439 Elee Free. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth


class RegistrationViewController: UIViewController
{
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func Submit(_ sender: Any)
    {
        if(email.text! == "" || password.text! == "")
        {
            UIAlertController(title: "Error", message: "Please enter your email and password", preferredStyle: .alert)
        }
        else
        {
            if let mail = email.text
            {
            if let pass = password.text
            {
                FIRAuth.auth()?.createUser(withEmail: email.text!, password: password.text!, completion: { (user, error) in
                    
                    if Error.self != nil
                    {
                        print("Error")
                    }
                    else
                    {
                        print("Registration Successful")
                        self.performSegue(withIdentifier: "registrationSegue", sender: nil)
                    }
                })
            }
            }
            
        }
    }
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    

}
