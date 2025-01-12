//
//  OptionalViewController.swift
//  AppBackFront
//
//  Created by Ronan Soares on 14/10/24.
//

import UIKit

class OptionalViewController: UIViewController, lineProtocol, alertImage {
    
    var screen: OptionalScreenView?
    
    override func loadView() {
        screen = OptionalScreenView()
        view = screen
        screen?.lineFuncDelegate(delegate: self )
        screen?.alertDelegateFunc(delegate: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func drawLine() {
        dismiss(animated: true) { // primeiro sai da Present
        self.navigationController?.popToRootViewController(animated: true) // volta para root
        }
        // retorna para uinavigationController, vindo de um Present
    }
    
    func showAlertImage() {
        dismiss( animated: true, completion: nil)
    }
    

}
