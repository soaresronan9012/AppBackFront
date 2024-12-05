//
//  RegisterScreen.swift
//  AppBackFront
//
//  Created by Ronan Soares on 30/11/24.
//

import UIKit

class RegisterScreen: UIView {
    
    lazy var subImageView: UIImageView = { // imagem de fundo da view
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "fd5a2f9f851eed98a0960e551dceb487" )   // assets da imagem
        //image.contentMode = .scaleAspectFit  // por hora nao usar
        return image
    }()
    
    lazy var ImageHeadView: UIImageView = { // imagem de fundo da view
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "Vector (1)" )   // assets da imagem
        //image.contentMode = .scaleAspectFit  // por hora nao usar
        return image
    }()
    
    lazy var HeadLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Please, login with your credentials!"
        label.textColor = .white
        label.numberOfLines = 3 // Limita a label a um máximo de 3 linhas
        label.textAlignment = .center // Alinha o texto no centro
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray5
        addelement()
        setupConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addelement() {
        addSubview(subImageView)
        addSubview(ImageHeadView)
        addSubview(HeadLabel)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            // dimensoes da imagem de fundo
            subImageView.topAnchor.constraint(equalTo: topAnchor),
            subImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageView.topAnchor.constraint(equalTo: topAnchor),
            subImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            ImageHeadView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
            //ImageHeadView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            ImageHeadView.centerXAnchor.constraint(equalTo: centerXAnchor),
            ImageHeadView.widthAnchor.constraint(equalToConstant: 60),
            ImageHeadView.heightAnchor.constraint(equalToConstant: 60),
            
            HeadLabel.topAnchor.constraint(equalTo: ImageHeadView.bottomAnchor, constant: 40),
            HeadLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            ])
    }
    
}
