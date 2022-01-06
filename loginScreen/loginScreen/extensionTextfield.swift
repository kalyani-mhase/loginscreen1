//
//  extensionTextfield.swift
//  loginScreen
//
//  Created by Admin on 04/01/22.
//

import UIKit
extension UITextField{
    func addLeftView(image:UIImage){
        let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 10, height: 10))
        imageView.image = image
        imageView.contentMode = .center
        leftView = imageView
        leftViewMode = .always
    
    }
}
