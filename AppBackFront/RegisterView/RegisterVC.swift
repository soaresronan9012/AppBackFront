//
//  RegisterVC.swift
//  AppBackFront
//
//  Created by Ronan Soares on 30/11/24.
//

import UIKit

class RegisterVC: UIViewController {

    var screen : RegisterScreen?
    
    override func loadView() {
        screen = RegisterScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
