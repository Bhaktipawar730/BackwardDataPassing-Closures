//
//  ViewController.swift
//  BackwardDataPassingThroughClosure
//  Created by Mac on 13/12/24.


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    private var reuseIdentifier = "SecondViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnNext(_ sender: Any) {
        
        let secondViewController = self.storyboard?.instantiateViewController(identifier: reuseIdentifier) as! SecondViewController
        
        //way 2
        secondViewController.passDataUsingClosure = {
            user in
            self.nameLabel.text = user.firstName
            self.lastNameLabel.text = user.lastName
            self.passwordLabel.text = user.password
        }
        
        //way 1
        
//        secondViewController.passData = {
//            name, lastName, password in
//            self.nameLabel.text = name
//            self.lastNameLabel.text = lastName
//            self.passwordLabel.text = password
//        }
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
}
