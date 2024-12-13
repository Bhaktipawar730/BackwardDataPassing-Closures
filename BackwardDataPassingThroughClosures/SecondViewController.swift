//
//  SecondViewController.swift
//  BackwardDataPassingThroughClosures
//  Created by Mac on 13/12/24.

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //way 2
    var passDataUsingClosure : ((User)->Void)?
    
    //way 1
//    var passData : ((String,String,String)->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btnBack(_ sender: Any) {
        
        //way 2
        guard let passData = passDataUsingClosure else { return }
        
        let firstName = self.nameTextField.text
        let LastName = self.lastNameTextField.text
        let Password = self.passwordTextField.text
        
        let user = User(firstName: firstName!, lastName: LastName!, password: Password!)
        
        passData(user)
        
        
          //way 1
        
//        guard let passDataClosure = passData else { return }
//
//        let extractedName = self.nameTextField.text
//        let extractedLastName = self.lastNameTextField.text
//        let extractedPassword = self.passwordTextField.text
//
//        passDataClosure(extractedName!,extractedLastName!,extractedPassword!)
//
        self.navigationController?.popViewController(animated: true)
    }
}
