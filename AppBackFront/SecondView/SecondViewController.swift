//
//  SecondViewController.swift
//  AppBackFront
//
//  Created by Ronan Soares on 10/10/24.
//

import UIKit

class SecondViewController: UIViewController, SecondScrrenProtocol, UITextFieldDelegate {
   
    var screen : SecondScreen? // cria uma var do tipo da screen alvo
    
    override func loadView() {
        screen = SecondScreen() // cria uma instancia da view alvo
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self) // protocolo invocado
        screen?.configDelegateTextField(delegate: self) // protocolo textfield

    }
    

    func tappetCadastroButton(){
        print("Estou na secondVc")
        let RegisterVC = RegisterVC() // instancia a class alvo
        RegisterVC.modalPresentationStyle = .pageSheet // customizacao do tamanho de tela
        present(RegisterVC, animated: true ,completion: nil) // invoca o método
            }
            
            // metodos textField Delegate
    func textFieldDidBeginEditing(_ textField: UITextField) {
                            
                }
                
    func textFieldDidEndEditing(_ textField: UITextField) {
                            
                }
               
                
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { // ao clicar return
                    textField.resignFirstResponder() // habilita sair do teclado apertando |return| do mesmo
                    return false
                }
                        
    
    

}
