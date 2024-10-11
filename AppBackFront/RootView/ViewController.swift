//
//  ViewController.swift
//  AppBackFront
//
//  Created by Ronan Soares on 29/09/24.
//

import UIKit

class ViewController: UIViewController, viewControllerScrrenProtocol, UITextFieldDelegate {  // protocolos
    
    var Screen : ViewControllerScreen? // cria uma var do tipo view personalizada

    override func loadView() {
        Screen = ViewControllerScreen() // instancia a view alvo
        view = Screen
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Screen?.configTextFieldDelegate(delegate: self)
        Screen?.delegate(delegate: self) // invoca método da ViewScrren e passa si proprio como parametro, para se tornar o delegado
                
    }
    
    func tappedLoginButton() { // função do delegate, ao clicar no botao
        print ( "estou na ViewController")
            let vc : SecondViewController = SecondViewController()  // criou uma instancia da class HOME
            vc.modalPresentationStyle = .pageSheet //personaliza o tipo da tela, no caso tela inteira
                //present(vc, animated: true)    // invocou o método PRESENT com a instancia anterior
            navigationController?.pushViewController(vc, animated: true) // metodo da navigationController
                }
    
    // metodos padrao delegate textfield
       func textFieldDidBeginEditing( _ textField : UITextField){ // Notifica que o usuário começou a editar o texto no campo (o teclado aparece).
           print(#function)
       }
           
       func textFieldDidEndEditing( _ textField : UITextField){ //Notifica que o usuário terminou de editar o texto (o teclado desaparece).
           print(#function)
           
           let email : String = Screen?.emailTextField.text ?? ""  // nesse campo qual o valor de text , se esta preenchido
           let password : String = Screen?.passwordTextField.text ?? ""
           
           if !email.isEmpty && !password.isEmpty { // verifica se ambos NÃO estao vazios com o !
               print("botao habilitado")
               Screen?.buttonLoginButton.backgroundColor = UIColor.systemPurple.withAlphaComponent(0.8) 
               Screen?.buttonLoginButton.isEnabled = true
           }
           else{
               print("botao desabilitado")
               Screen?.buttonLoginButton.isEnabled = false
               Screen?.buttonLoginButton.backgroundColor = UIColor.systemPurple.withAlphaComponent(0.1)
               // caso limpe os campos digitados novamente
           }
           
           }
           
       func textFieldShouldReturn( _ textField : UITextField) -> Bool{ //Notifica que o botão "return" foi pressionado no teclado. Pode ser usado para fechar o teclado ou realizar outra ação, como submeter um formulário.
           print(#function)
           textField.resignFirstResponder() // habilita sair do teclado apertando |return| do mesmo
           return false
       }
}

