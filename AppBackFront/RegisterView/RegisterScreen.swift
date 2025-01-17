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
        title.text = "Email:"  // Define o texto do label
        title.textAlignment = .center  // Centraliza o texto no label
        title.font = UIFont.systemFont(ofSize: 16, weight: .bold)  // Define a fonte e o tamanho
        title.textColor = .white // Cor do texto
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    lazy var nomeTextFieldRegister : UITextField = { // campo de email
        let emailLogin = UITextField()
        //emailLogin.placeholder = " email"
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
        title.text = "Password:"  // Define o texto do label
        title.textAlignment = .center  // Centraliza o texto no label
        title.font = UIFont.systemFont(ofSize: 16, weight: .bold)  // Define a fonte e o tamanho
        title.textColor = .white // Cor do texto
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    lazy var passwordTextFieldRegister : UITextField = { // campo de email
        let emailLogin = UITextField()
        //emailLogin.placeholder = " password"
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
        emailLogin.isSecureTextEntry = true
        emailLogin.textContentType = .oneTimeCode
        //Sugestões automáticas reduzem a probabilidade de erros de digitação, especialmente para campos sensíveis, como emails e códigos de verificação.
        return emailLogin
    }()
    
    
    lazy var buttonRecoverButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("send ", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)// tamanho da fonte
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.systemPurple.withAlphaComponent(0.8) // cor com transparencia
        button.layer.cornerRadius = 10 // angulo das bordas
        button.clipsToBounds = true // habilita bordas arredondadas
        button.addTarget(self, action: #selector(tappetButtonCadastroButton), for: .touchUpInside)
        button.isEnabled = false
        return button
    }()
    @objc func tappetButtonCadastroButton( _ sender: UIButton){ // método invocado pela acao do botao
        print("clicou")
        
    }
    
    
    public func configDelegateTextFieldDelegate(delegate: UITextFieldDelegate){
        nomeTextFieldRegister.delegate = delegate
        passwordTextFieldRegister.delegate = delegate
        // elementos a serem validados
    }
    
    public func validateTextFields(){  // funcao de validacoes
        let passwordValidation : String = nomeTextFieldRegister.text ?? ""
        let textFieldValidation : String = passwordTextFieldRegister.text ??  ""
        
        if !passwordValidation.isEmpty && !textFieldValidation.isEmpty { // se campos preenchidos
            buttonRecoverButton.isEnabled = true
            buttonRecoverButton.setTitleColor(.white, for: .normal)
            nomeTextFieldRegister.layer.borderWidth = 0
            passwordTextFieldRegister.layer.borderWidth = 0 }
        
        else{ // se campos vazios
            buttonRecoverButton.isEnabled = false
            buttonRecoverButton.setTitleColor(.systemGray, for: .normal)
            
            nomeTextFieldRegister.layer.borderWidth = 2
            nomeTextFieldRegister.layer.borderColor = UIColor.red.cgColor
            
            passwordTextFieldRegister.layer.borderWidth = 2
            passwordTextFieldRegister.layer.borderColor = UIColor.red.cgColor
            
//            if passwordValidation.isEmpty {
//                passwordTextFieldRegister.layer.borderColor = UIColor.red.cgColor
//                passwordTextFieldRegister.layer.borderWidth = 2
//                }
//            if textFieldValidation.isEmpty{
//                nomeTextFieldRegister.layer.borderColor = UIColor.red.cgColor
//                nomeTextFieldRegister.layer.borderWidth = 2
//                }
        }
        }
    
    private func setupDismissKeyboardGesture() { // ao clicar na tela, o teclado desce
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
            tapGesture.cancelsTouchesInView = false // Permite que outros gestos ainda sejam processados
        self.addGestureRecognizer(tapGesture)
        }
    @objc private func dismissKeyboard() {
        self.endEditing(true) // Fecha o teclado
        
        if passwordTextFieldRegister.text?.isEmpty == true {  // se esse campo estiver vazio
            passwordTextFieldRegister.layer.borderColor = UIColor.red.cgColor
            passwordTextFieldRegister.layer.borderWidth = 2
            }
        else{
            passwordTextFieldRegister.layer.borderWidth = 0  // se preenchido
        }
        
        if nomeTextFieldRegister.text?.isEmpty == true{  // se esse campo estiver vazio
            nomeTextFieldRegister.layer.borderColor = UIColor.red.cgColor
            nomeTextFieldRegister.layer.borderWidth = 2
            }
        else{
            nomeTextFieldRegister.layer.borderWidth = 0  // se preenchido
        }
       }

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray5
        addelement()
        setupConstraints()
        setupDismissKeyboardGesture()
        
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
        addSubview(buttonRecoverButton)
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
            //nomeLabelRegister.centerXAnchor.constraint(equalTo: centerXAnchor),
            //nomeLabelRegister.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            nomeTextFieldRegister.topAnchor.constraint(equalTo: nomeLabelRegister.bottomAnchor, constant: 10),
            nomeTextFieldRegister.leadingAnchor.constraint(equalTo: nomeLabelRegister.leadingAnchor),
            nomeTextFieldRegister.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            nomeTextFieldRegister.heightAnchor.constraint(equalToConstant: 30),
            //nomeTextFieldRegister.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            passwordLabelRegister.topAnchor.constraint(equalTo: nomeTextFieldRegister.bottomAnchor, constant: 30),
            passwordLabelRegister.leadingAnchor.constraint(equalTo: leadingAnchor, constant:  30),
            //passwordLabelRegister.centerXAnchor.constraint(equalTo: centerXAnchor),
            //passwordLabelRegister.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            passwordTextFieldRegister.topAnchor.constraint(equalTo: passwordLabelRegister.bottomAnchor, constant: 10),
            passwordTextFieldRegister.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            passwordTextFieldRegister.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            passwordTextFieldRegister.heightAnchor.constraint(equalToConstant: 30),
            //passwordTextFieldRegister.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            buttonRecoverButton.topAnchor.constraint(equalTo: passwordTextFieldRegister.bottomAnchor, constant: 80),
            buttonRecoverButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonRecoverButton.widthAnchor.constraint(equalToConstant: 160),
        ])
    }
    
}
