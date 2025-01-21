//
//  RecoverVC.swift
//  AppBackFront
//
//  Created by Ronan Soares on 02/01/25.
//

import UIKit

class RecoverVC: UIViewController, UITextFieldDelegate {
    
    var screen : RecoverScreen?
    
    override func loadView() {
        super.loadView()
        screen = RecoverScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configDelegateTextField(delegate: self)

        // Do any additional setup after loading the view.
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        screen?.validaTextField()     // após digitar
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        screen?.recoverTextField.layer.borderWidth = 0 // antes de digitar
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() // habilita sair do teclado apertando |return| do mesmo
        return false
    }

}
