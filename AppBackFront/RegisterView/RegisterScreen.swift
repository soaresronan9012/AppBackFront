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
    
    
    lazy var nomeLabelRegister: UILabel = {
        let title = UILabel()
        title.text = "Name:"  // Define o texto do label
        title.textAlignment = .center  // Centraliza o texto no label
        title.font = UIFont.systemFont(ofSize: 16, weight: .bold)  // Define a fonte e o tamanho
        title.textColor = .white // Cor do texto
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    lazy var nomeTextFieldRegister : UITextField = { // campo de email
        let emailLogin = UITextField()
        emailLogin.placeholder = " email"
        emailLogin.textColor = .black
        emailLogin.font = UIFont.systemFont(ofSize: 16)
        emailLogin.translatesAutoresizingMaskIntoConstraints = false
        emailLogin.backgroundColor = .systemGray2
        emailLogin.autocorrectionType = .no  // desabilita autocorrecao de texto
        //emailLogin.borderStyle = .roundedRect // bordas arredondadas
        emailLogin.layer.cornerRadius = 12 // borda arredondada
        emailLogin.layer.borderWidth = 1.0// largura borda
        emailLogin.layer.borderColor = UIColor.white.cgColor // cor da borda
        emailLogin.keyboardType = .emailAddress // tipo de teclado
        return emailLogin
    }()
    
    lazy var passwordLabelRegister: UILabel = {
        let title = UILabel()
        title.text = "password:"  // Define o texto do label
        title.textAlignment = .center  // Centraliza o texto no label
        title.font = UIFont.systemFont(ofSize: 16, weight: .bold)  // Define a fonte e o tamanho
        title.textColor = .white // Cor do texto
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    lazy var passwordTextFieldRegister : UITextField = { // campo de email
        let emailLogin = UITextField()
        emailLogin.placeholder = " password"
        emailLogin.textColor = .black
        emailLogin.font = UIFont.systemFont(ofSize: 16)
        emailLogin.translatesAutoresizingMaskIntoConstraints = false
        emailLogin.backgroundColor = .systemGray2
        emailLogin.autocorrectionType = .no  // desabilita autocorrecao de texto
        //emailLogin.borderStyle = .roundedRect // bordas arredondadas
        emailLogin.layer.cornerRadius = 12 // borda arredondada
        emailLogin.layer.borderWidth = 1.0// largura borda
        emailLogin.layer.borderColor = UIColor.white.cgColor // cor da borda
        emailLogin.keyboardType = .default // tipo de teclado
        emailLogin.isSecureTextEntry = true
        return emailLogin
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
        addSubview(nomeLabelRegister)
        addSubview(nomeTextFieldRegister)
        addSubview(passwordLabelRegister)
        addSubview(passwordTextFieldRegister)
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
            
            nomeLabelRegister.topAnchor.constraint(equalTo: HeadLabel.bottomAnchor, constant: 60),
            nomeLabelRegister.leadingAnchor.constraint(equalTo: leadingAnchor, constant:  30),
            nomeLabelRegister.centerXAnchor.constraint(equalTo: centerXAnchor),
            nomeLabelRegister.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            nomeTextFieldRegister.topAnchor.constraint(equalTo: nomeLabelRegister.bottomAnchor, constant: 20),
            nomeTextFieldRegister.leadingAnchor.constraint(equalTo: nomeLabelRegister.leadingAnchor),
            nomeTextFieldRegister.trailingAnchor.constraint(equalTo: nomeLabelRegister.trailingAnchor),
            nomeTextFieldRegister.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            passwordLabelRegister.topAnchor.constraint(equalTo: nomeTextFieldRegister.bottomAnchor, constant: 30),
            passwordLabelRegister.leadingAnchor.constraint(equalTo: leadingAnchor, constant:  30),
            passwordLabelRegister.centerXAnchor.constraint(equalTo: centerXAnchor),
            passwordLabelRegister.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            passwordTextFieldRegister.topAnchor.constraint(equalTo: passwordLabelRegister.bottomAnchor, constant: 20),
            passwordTextFieldRegister.leadingAnchor.constraint(equalTo: passwordLabelRegister.leadingAnchor),
            passwordTextFieldRegister.trailingAnchor.constraint(equalTo: passwordLabelRegister.trailingAnchor),
            passwordTextFieldRegister.centerXAnchor.constraint(equalTo: centerXAnchor),            ])
    }
    
}
