//
//  SecondViewController.swift
//  AppBackFront
//
//  Created by Ronan Soares on 10/10/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    var screen : SecondScreen? // cria uma var do tipo da screen alvo
    
    override func loadView() {
        screen = SecondScreen() // cria uma instancia da view alvo
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
