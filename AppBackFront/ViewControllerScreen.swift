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
    
    lazy var loginLogoView: UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.image = UIImage(named: "Vector (1)")
        return logo
    }()
    
    lazy var titleLabel: UILabel = {
        let title = UILabel()
        title.text = "BF NFT"  // Define o texto do label
        title.textAlignment = .center  // Centraliza o texto no label
        title.font = UIFont.systemFont(ofSize: 34, weight: .bold)  // Define a fonte e o tamanho
        title.textColor = .white // Cor do texto
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    lazy var subtitleLabel: UILabel = {
        let title = UILabel()
        title.text = "O marketplace de NFTs da Backfront Academy"  // Define o texto do label
        title.textAlignment = .center  // Centraliza o texto no label
        title.font = UIFont.systemFont(ofSize: 13, weight: .semibold)  // Define a fonte e o tamanho
        title.textColor = .white // Cor do texto
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
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
        addSubview(loginLogoView)
        addSubview(titleLabel)
        addSubview(subtitleLabel)
    }
    
    private func configConstraints () {
        NSLayoutConstraint.activate([ // essa configuracao é para cobrir toda a view
            subImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageView.topAnchor.constraint(equalTo: topAnchor),
            subImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            loginLogoView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            loginLogoView.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginLogoView.heightAnchor.constraint(equalToConstant: 65), // altura logo
            loginLogoView.widthAnchor.constraint(equalToConstant: 65), //largura logo
            
            titleLabel.topAnchor.constraint(equalTo: loginLogoView.bottomAnchor, constant: 15),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            subtitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
}
