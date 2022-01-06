//
//  ViewController.swift
//  loginScreen
//
//  Created by Admin on 04/01/22.
//

import UIKit

class ViewController: UIViewController {
    var img = "gmail"
    var img1 = "key"
    @IBOutlet weak var userTextfiled: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       button.backgroundColor = .white
        button.layer.cornerRadius = 20
 
    }


}

