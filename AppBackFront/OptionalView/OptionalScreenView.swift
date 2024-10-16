//
//  OptionalScreenView.swift
//  AppBackFront
//
//  Created by Ronan Soares on 14/10/24.
//

import UIKit

class OptionalScreenView: UIView {
    
    lazy var backgroundImageView: UIImageView = { // imagem de fundo da view
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "background-gradient-lights" )   // assets da imagem
        //image.contentMode = .scaleAspectFit  // por hora nao usar
        return image
    }()
    
    lazy var labelInfoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Welcome"  // Define o texto do label
        label.textAlignment = .center  // Centraliza o texto no label
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)  // Define a fonte e o tamanho
        label.textColor = .white // Cor do texto
        return label
    }()
    
    override init(frame : CGRect){
        super.init(frame: frame)
        addElements() // chama o método com todos os elementos
        configConstraints() // constraints dos elementos
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    private func addElements(){
        addSubview(backgroundImageView)
        addSubview(labelInfoLabel)
        }
        
    private func configConstraints(){
        NSLayoutConstraint.activate([ // essa configuracao é para cobrir toda a view
                backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
                backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
                backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
                backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
                
                labelInfoLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
                labelInfoLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
                        
            ])}
    
}
