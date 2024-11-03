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
    
    lazy var titleUILabel: UILabel = {
        let title = UILabel()
        title.text = "Here you find all the best in one place"  // Define o texto do label
        title.textAlignment = .center  // Centraliza o texto no label
        title.font = UIFont.systemFont(ofSize: 18, weight: .bold)  // Define a fonte e o tamanho
        title.textColor = .white // Cor do texto
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    lazy var alertImage : UIImageView = {
        let alert = UIImageView()
        alert.translatesAutoresizingMaskIntoConstraints = false
        alert.image = UIImage(named: "login-2-svgrepo-com" )
        return alert
    }()
    
    lazy var lineUILabel : UILabel = {
        let line = UILabel()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.text = "Register now"
        line.textAlignment = .center
        line.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        line.textColor = .white
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
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
        addSubview(titleUILabel)
        addSubview(alertImage)
        addSubview(lineUILabel)
        }
        
    private func configConstraints(){
        NSLayoutConstraint.activate([ // essa configuracao é para cobrir toda a view
                backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
                backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
                backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
                backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
                
                labelInfoLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
                labelInfoLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
                
                titleUILabel.topAnchor.constraint(equalTo: labelInfoLabel.bottomAnchor, constant: 50),
                titleUILabel.centerXAnchor.constraint(equalTo: centerXAnchor),
                
                alertImage.topAnchor.constraint(equalTo: titleUILabel.bottomAnchor, constant: 90),
                alertImage.centerXAnchor.constraint(equalTo: centerXAnchor),
                alertImage.widthAnchor.constraint(equalToConstant: 120),
                alertImage.heightAnchor.constraint(equalToConstant: 120),
                
                lineUILabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -75 ),
                lineUILabel.centerXAnchor.constraint(equalTo: centerXAnchor),
                        
            ])}
    
}
