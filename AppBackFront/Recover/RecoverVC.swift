//
//  RecoverVC.swift
//  AppBackFront
//
//  Created by Ronan Soares on 02/01/25.
//

import UIKit

class RecoverVC: UIViewController {
    
    var screen : RecoverScreen?
    
    override func loadView() {
        super.loadView()
        screen = RecoverScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    

}
