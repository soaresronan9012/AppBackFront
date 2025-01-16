//
//  RegisterVC.swift
//  AppBackFront
//
//  Created by Ronan Soares on 30/11/24.
//

import UIKit

class RegisterVC: UIViewController, UITextFieldDelegate {

    var screen : RegisterScreen?
    
    override func loadView() {
        screen = RegisterScreen()
        view = screen
        screen?.configDelegateTextFieldDelegate(delegate: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    //metodos delegate de textfield
    func textFieldDidEndEditing(_ textField: UITextField) {  // ao finalizar
        screen?.validateTextFields()
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) { // quando começa a editar
        screen?.nomeTextFieldRegister.layer.borderWidth = 0
        screen?.passwordLabelRegister.layer.borderWidth = 0
    }
    
    func textFieldShouldReturn( _ textField : UITextField) -> Bool{ //Notifica que o botão "return" foi pressionado no teclado. Pode ser usado para fechar o teclado ou realizar outra ação, como submeter um formulário.
        print(#function)
        textField.resignFirstResponder() // habilita sair do teclado apertando |return| do mesmo
        return false
    }


}
