//
//  SecondScreen.swift
//  AppBackFront
//
//  Created by Ronan Soares on 10/10/24.
//

import UIKit

class SecondScreen: UIView {
    
    lazy var backgroundImage : UIImageView = {
        let bg = UIImageView()
        bg.translatesAutoresizingMaskIntoConstraints = false
        bg.image = UIImage(named: "BgSecond" )
        return bg
    }()
    
    lazy var greatLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Welcome to the NFT Platform that you update in real time!"
        label.textColor = .white
        label.numberOfLines = 3 // Limita a label a um máximo de 3 linhas
        label.textAlignment = .center // Alinha o texto no centro        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements(){
        addSubview(backgroundImage)
        addSubview(greatLabel)
    }
    
    private func configConstraints (){
        NSLayoutConstraint.activate([
            // imagem que será o fundo dessa view
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
        
            greatLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            greatLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 80),
            greatLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80),
            greatLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -80),
        
        
        ])
    }
    
}
