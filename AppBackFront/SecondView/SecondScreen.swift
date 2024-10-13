//
//  SecondScreen.swift
//  AppBackFront
//
//  Created by Ronan Soares on 10/10/24.
//

import UIKit

protocol SecondScrrenProtocol : AnyObject {  // cria um Protocolo de Delegação para comunicar com o ViewController
    func tappetCadastroButton() // método do protocolo, irá ser chamado na viewcontroller
    }


class SecondScreen: UIView {
    
    private weak var delegate : SecondScrrenProtocol?  // delegate  será qualquer classe que implementar o protocolo / propriedade do tipo delegate optional
        
        public func delegate( delegate: SecondScrrenProtocol? ){ // o parametro dessa funcao, sera o delegado enviado para a private weak delegate
            self.delegate = delegate// parametro
        }
    
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
    
    lazy var inscricaoLabel: UILabel = {
        let title = UILabel()
        title.text = "Sing up"  // Define o texto do label
        title.textAlignment = .center  // Centraliza o texto no label
        title.font = UIFont.systemFont(ofSize: 22, weight: .bold)  // Define a fonte e o tamanho
        title.textColor = .white // Cor do texto
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    lazy var nomeLabel: UILabel = {
        let title = UILabel()
        title.text = "Name:"  // Define o texto do label
        title.textAlignment = .center  // Centraliza o texto no label
        title.font = UIFont.systemFont(ofSize: 16, weight: .bold)  // Define a fonte e o tamanho
        title.textColor = .white // Cor do texto
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    lazy var nomeTextField : UITextField = { // campo de email
        let emailLogin = UITextField()
        //emailLogin.placeholder = " Login"
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
    
    
    lazy var sobrenomeLabel: UILabel = {
        let title = UILabel()
        title.text = "Last name:"  // Define o texto do label
        title.textAlignment = .center  // Centraliza o texto no label
        title.font = UIFont.systemFont(ofSize: 16, weight: .bold)  // Define a fonte e o tamanho
        title.textColor = .white // Cor do texto
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    lazy var sobrenomeTextField : UITextField = { // campo de email
        let emailLogin = UITextField()
        //emailLogin.placeholder = " Login"
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
    
    
    lazy var idadeLabel: UILabel = {
        let title = UILabel()
        title.text = "Age:"  // Define o texto do label
        title.textAlignment = .center  // Centraliza o texto no label
        title.font = UIFont.systemFont(ofSize: 16, weight: .bold)  // Define a fonte e o tamanho
        title.textColor = .white // Cor do texto
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    lazy var idadeTextField : UITextField = { // campo de email
        let emailLogin = UITextField()
        //emailLogin.placeholder = " Login"
        emailLogin.textColor = .black
        emailLogin.font = UIFont.systemFont(ofSize: 20)
        emailLogin.translatesAutoresizingMaskIntoConstraints = false
        emailLogin.backgroundColor = .systemGray2
        emailLogin.autocorrectionType = .no  // desabilita autocorrecao de texto
        //emailLogin.borderStyle = .roundedRect // bordas arredondadas
        emailLogin.layer.cornerRadius = 12 // borda arredondada
        emailLogin.layer.borderWidth = 1.0// largura borda
        emailLogin.layer.borderColor = UIColor.white.cgColor // cor da borda
        emailLogin.keyboardType = .numberPad // tipo de teclado
        return emailLogin
    }()
    
    lazy var buttonCadastroButton : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("registered", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)// tamanho da fonte
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.systemPurple.withAlphaComponent(0.8) // cor com transparencia
        button.layer.cornerRadius = 10 // angulo das bordas
        button.clipsToBounds = true // habilita bordas arredondadas
        button.addTarget(self, action: #selector(tappetButtonCadastroButton), for: .touchUpInside)
        return button
    }()
    @objc func tappetButtonCadastroButton( _ sender: UIButton){ // método invocado pela acao do botao
        print(#function)
        delegate?.tappetCadastroButton()
    }
    
    
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
        addSubview(inscricaoLabel)
        addSubview(nomeLabel)
        addSubview(nomeTextField)
        addSubview(sobrenomeLabel)
        addSubview(sobrenomeTextField)
        addSubview(idadeLabel)
        addSubview(idadeTextField)
        addSubview(buttonCadastroButton)
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
            
            inscricaoLabel.topAnchor.constraint(equalTo: greatLabel.bottomAnchor, constant: 45),
            inscricaoLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            //inscricaoLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30)
            
            nomeLabel.topAnchor.constraint(equalTo: inscricaoLabel.bottomAnchor, constant: 35),
            nomeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            nomeTextField.topAnchor.constraint(equalTo: nomeLabel.bottomAnchor, constant: 10),
            nomeTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            //nomeTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            nomeTextField.heightAnchor.constraint(equalToConstant: 30),
            nomeTextField.widthAnchor.constraint(equalToConstant: 320),
            
            sobrenomeLabel.topAnchor.constraint(equalTo: nomeTextField.bottomAnchor, constant: 20),
            sobrenomeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            sobrenomeTextField.topAnchor.constraint(equalTo: sobrenomeLabel.bottomAnchor, constant: 10),
            sobrenomeTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            //nomeTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            sobrenomeTextField.heightAnchor.constraint(equalToConstant: 30),
            sobrenomeTextField.widthAnchor.constraint(equalToConstant: 320),
            
            idadeLabel.topAnchor.constraint(equalTo: sobrenomeTextField.bottomAnchor, constant: 20),
            idadeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            idadeTextField.topAnchor.constraint(equalTo: idadeLabel.bottomAnchor, constant: 10),
            idadeTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            //nomeTextField.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -30),
            idadeTextField.heightAnchor.constraint(equalToConstant: 30),
            idadeTextField.widthAnchor.constraint(equalToConstant: 320),
            
            buttonCadastroButton.topAnchor.constraint(equalTo: idadeTextField.bottomAnchor, constant: 60),
            buttonCadastroButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonCadastroButton.widthAnchor.constraint(equalToConstant: 160),
            
        ])
    }
    
}
