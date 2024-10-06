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
    
    
    lazy var emailTextField : UITextField = { // campo de email
                let emailLogin = UITextField()
                emailLogin.placeholder = " Login"
                emailLogin.textColor = .black
                emailLogin.font = UIFont.systemFont(ofSize: 20)
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
        
        
    lazy var passwordTextField : UITextField = { // campo de senha
                let passwordLogin = UITextField()
                passwordLogin.placeholder = " Senha"
                passwordLogin.textColor = .black
                passwordLogin.font = UIFont.systemFont(ofSize: 20)
                passwordLogin.translatesAutoresizingMaskIntoConstraints = false
                passwordLogin.backgroundColor = .systemGray2
                passwordLogin.autocorrectionType = .no  // desabilita autocorrecao de texto
                //passwordLogin.borderStyle = .roundedRect // bordas arredondadas
                passwordLogin.layer.cornerRadius = 12
                passwordLogin.layer.borderWidth = 1.0
                passwordLogin.layer.borderColor = UIColor.white.cgColor
                passwordLogin.keyboardType = .default // tipo de teclado
                passwordLogin.isSecureTextEntry = true // texto para senhas protegidas
                return passwordLogin
            }()
    
    lazy var recoverPasswordButton : UIButton = {
        let bt = UIButton(type: .system) // button do tipo do sistema
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setTitle("Recuperar senha?", for: .normal)
        bt.setTitleColor(UIColor(red: 231/235, green: 48/255, blue: 214/255, alpha: 1.0) ,for: .normal) // cor personalizada em RGB
        bt.addTarget(self, action:#selector(tappetRecoverPasswordButton), for: .touchUpInside)// método chamado e acao
        return bt
    }()
    @objc func tappetRecoverPasswordButton( _ sender: UIButton){ // método invocado pela acao do botao
        print(#function)
    }
    
    
    
    lazy var buttonLoginButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)// tamanho da fonte
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.systemPurple.withAlphaComponent(0.5) // cor com transparencia
        button.layer.cornerRadius = 10 // angulo das bordas
        button.clipsToBounds = true // habilita bordas arredondadas
        button.addTarget(self, action: #selector(tappetButtonLoginButton), for: .touchUpInside)
        return button
    }()
    @objc func tappetButtonLoginButton( _ sender: UIButton){ // método invocado pela acao do botao
        print(#function)
    }
    
    
    
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
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(recoverPasswordButton)
        addSubview(buttonLoginButton)
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
            
            emailTextField.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 30),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            emailTextField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            
            recoverPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 9),
            recoverPasswordButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            recoverPasswordButton.heightAnchor.constraint(equalToConstant: 16),
            
            buttonLoginButton.topAnchor.constraint(equalTo: recoverPasswordButton.bottomAnchor, constant: 40),
            buttonLoginButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonLoginButton.widthAnchor.constraint(equalToConstant: 240),
            
            
            
        ])
    }
}
