//
//  OptionalViewController.swift
//  AppBackFront
//
//  Created by Ronan Soares on 14/10/24.
//

import UIKit

class OptionalViewController: UIViewController {
    
    var screen: OptionalScreenView?
    
    override func loadView() {
        screen = OptionalScreenView()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    

}
