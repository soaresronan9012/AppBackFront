//
//  ViewController.swift
//  AppBackFront
//
//  Created by Ronan Soares on 29/09/24.
//

import UIKit

class ViewController: UIViewController, viewControllerScrrenProtocol, UITextFieldDelegate, LabelProtocol {  // protocolos
    
    var Screen : ViewControllerScreen? // cria uma var do tipo view personalizada

    override func loadView() {
        Screen = ViewControllerScreen() // instancia a view alvo
        view = Screen
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Screen?.configTextFieldDelegate(delegate: self)
        Screen?.delegate(delegate: self) // invoca método da ViewScrren e passa si proprio como parametro, para se tornar o delegado
        Screen?.delegatefunc(delegate: self)
                
    }
    
    func labelTappedProtocol() { // do protocol
        let OptionalVC = OptionalViewController() // instancia a class alvo
        OptionalVC.modalPresentationStyle = .pageSheet // customizacao do tamanho de tela
        present(OptionalVC, animated: true ,completion: nil) // invoca o método
        
    }
    
    func tappedLoginButton() { // função do delegate, ao clicar no botao
        print ( "estou na ViewController")
            let vc : SecondViewController = SecondViewController()  // criou uma instancia da class HOME
        vc.modalPresentationStyle = .formSheet //personaliza o tipo da tela, no caso tela inteira
                //present(vc, animated: true)    // invocou o método PRESENT com a instancia anterior
            navigationController?.pushViewController(vc, animated: true) // metodo da navigationController
                }
    
    func tappedButtonRecover() {
        let recover = RecoverVC()
        recover.modalPresentationStyle = .formSheet
        present(recover, animated: true)
    }
    
    
    
    // metodos padrao delegate textfield
       func textFieldDidBeginEditing( _ textField : UITextField){ // Notifica que o usuário começou a editar o texto no campo (o teclado aparece).
           print(#function)
           habilitField() // invoca metodo que desabilita advertencia visual de campos vazios
           
       }
           
    func textFieldDidEndEditing( _ textField : UITextField){ //Notifica que o usuário terminou de editar o texto (o teclado desaparece).
        print(#function)
        Screen?.callValidaTextField()
    }
           
    func habilitField(){
        if Screen?.emailTextField.text?.isEmpty == true{
                    //screen?.textName.layer.borderColor = UIColor.red.cgColor
            Screen?.emailTextField.layer.borderWidth = 0
                }
        if Screen?.passwordTextField.text?.isEmpty == true {
                    //screen?.textPassword.layer.borderColor = UIColor.red.cgColor
            Screen?.passwordTextField.layer.borderWidth = 0        
            }
           
           }

    
       func textFieldShouldReturn( _ textField : UITextField) -> Bool{ //Notifica que o botão "return" foi pressionado no teclado. Pode ser usado para fechar o teclado ou realizar outra ação, como submeter um formulário.
           print(#function)
           textField.resignFirstResponder() // habilita sair do teclado apertando |return| do mesmo
           return false
       }
    
    func recoverPasswordTappedProtocol() {
        print("estou na viewcontroller")
        // dismiss(animated: true, completion: nil) // so funciona na ViewController com present
          }
}

