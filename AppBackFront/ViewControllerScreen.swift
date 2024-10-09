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
    
    lazy var lineView : UIView = { // line
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.backgroundColor = .white
        return line
    }()
    
    lazy var loginView : UIView = { // view que ficara botao login de contas ja cadastradas
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.systemPurple.cgColor
        view.layer.borderWidth = 2  // largura da borda
        return view
    }()
    
    lazy var iconButtonImage : UIImageView = {
        let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.image = UIImage(named: "Image" )   // assets da imagem
        //image.contentMode = .scaleAspectFit  // por hora nao usar
        return icon
    }()
    
    lazy var labelIconLabel : UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = "Entrar com a Metamask"  // Define o texto do label
        lbl.textAlignment = .center  // Centraliza o texto no label
        lbl.font = UIFont.systemFont(ofSize: 13, weight: .semibold)  // Define a fonte e o tamanho
        lbl.textColor = .white // Cor do texto
        return lbl
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
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(recoverPasswordButton)
        addSubview(buttonLoginButton)
        addSubview(lineView)
        addSubview(loginView)
        loginView.addSubview(iconButtonImage) // porque esta dentro dessa view
        loginView.addSubview(labelIconLabel)
    }
    
    private func configConstraints () {
        NSLayoutConstraint.activate([ // essa configuracao é para cobrir toda a view
            subImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            subImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            subImageView.topAnchor.constraint(equalTo: topAnchor),
            subImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            loginLogoView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            loginLogoView.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginLogoView.heightAnchor.constraint(equalToConstant: 85), // altura logo
            loginLogoView.widthAnchor.constraint(equalToConstant: 85), //largura logo
            
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
            buttonLoginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            buttonLoginButton.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            //buttonLoginButton.widthAnchor.constraint(equalToConstant: 240),
            
            lineView.topAnchor.constraint(equalTo: buttonLoginButton.bottomAnchor, constant: 70),
            lineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            lineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            lineView.heightAnchor.constraint(equalToConstant: 0.5), // altura da linha
            
            loginView.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 48),
            loginView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            loginView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            loginView.heightAnchor.constraint(equalToConstant: 40),
            
            iconButtonImage.topAnchor.constraint(equalTo: loginView.topAnchor, constant: 10),
            //iconButtonImage.centerYAnchor.constraint(equalTo: iconButtonImage.centerYAnchor),
            iconButtonImage.leadingAnchor.constraint(equalTo: loginView.leadingAnchor, constant: 78),
            iconButtonImage.heightAnchor.constraint(equalToConstant: 20), // altura logo
            iconButtonImage.widthAnchor.constraint(equalToConstant: 20),
            
            labelIconLabel.topAnchor.constraint(equalTo: loginView.topAnchor, constant: 13),
            //labelIconLabel.centerYAnchor.constraint(equalTo: labelIconLabel.centerYAnchor),
            labelIconLabel.leadingAnchor.constraint(equalTo: iconButtonImage.trailingAnchor, constant: 20),
            
            
            
            
            
            
        ])
    }
}
