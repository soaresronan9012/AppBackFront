//
//  ViewController.swift
//  AppBackFront
//
//  Created by Ronan Soares on 29/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    var Screen : ViewControllerScreen? // cria uma var do tipo view personalizada

    override func loadView() {
        Screen = ViewControllerScreen() // instancia a view alvo
        view = Screen
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

