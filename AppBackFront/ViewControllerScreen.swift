//
//  ViewControllerScreen.swift
//  AppBackFront
//
//  Created by Ronan Soares on 01/10/24.
//

import UIKit

class ViewControllerScreen: UIView {
    
    lazy var subImageView: UIImageView = { // imagem de fundo da view
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "BGLogin" )   // assets da imagem
        //image.contentMode = .scaleAspectFit  // por hora nao usar
        return image
    }()

    override init(frame: CGRect) { //permite que você crie uma view com um retângulo inicial (frame), que define sua posição e tamanho na tela.
        super.init(frame: frame) //O frame define a posição e o tamanho da UIView quando ela é criada.
        
        addElements() // chama o método com todos os elementos
        configConstraints() // constraints dos elementos
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements () { // método para invocar os elementos para a view
        addSubview(subImageView)
    }
    
    private func configConstraints () {
        NSLayoutConstraint.activate([ // essa configuracao é para cobrir toda a view
            subImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageView.topAnchor.constraint(equalTo: topAnchor),
            subImageView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
