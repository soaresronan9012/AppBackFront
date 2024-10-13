//
//  SecondViewController.swift
//  AppBackFront
//
//  Created by Ronan Soares on 10/10/24.
//

import UIKit

class SecondViewController: UIViewController, SecondScrrenProtocol {
   
    var screen : SecondScreen? // cria uma var do tipo da screen alvo
    
    override func loadView() {
        screen = SecondScreen() // cria uma instancia da view alvo
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate(delegate: self)

    }
    

    func tappetCadastroButton(){
        print("Estou na secondVc")
    }   

}
