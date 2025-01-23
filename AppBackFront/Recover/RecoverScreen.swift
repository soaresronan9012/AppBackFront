//
//  RecoverScreen.swift
//  AppBackFront
//
//  Created by Ronan Soares on 02/01/25.
//

import UIKit

class RecoverScreen: UIView {
    
    lazy var backgroundimage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "1293bbacd8e156078624840765820ad0")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy var labelRecover:UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.textColor = .white
        lb.textAlignment = .center
        //lb.font = UIFont.systemFont(ofSize: 25)
        lb.font = UIFont.boldSystemFont(ofSize: 25)
        lb.text = "recover your password on this page"
        lb.shadowColor = .black
        lb.numberOfLines = 0   // numbers of lines
        return lb
    }()
    
    lazy var imageRecover: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "user-check-alt-svgrepo-com")?.withRenderingMode(.alwaysTemplate)
        //Transforma a imagem em um template para que a tintColor seja aplicada corretamente. Este modo faz com que todos os pixels não transparentes da imagem usem a cor definida pela tintColor.
        imageView.tintColor = .white // passa para a cor branca
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
//    lazy var lineView: UIView = {
//        let lineView = UIView()
//        lineView.translatesAutoresizingMaskIntoConstraints = false
//        lineView.backgroundColor = .white
//        return lineView
//    }()
    
    
    lazy var recoverTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.attributedPlaceholder = NSAttributedString(
                string: "enter your email",
                attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
            )
        textField.borderStyle = .none
        textField.font = UIFont.systemFont(ofSize: 15)
        textField.textColor = .white
        return textField
    }()
    
    lazy var lineRecoverTextField: UIView = {
        let lineView = UIView()
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.backgroundColor = .white
        return lineView
    }()
    
    lazy var buttonRecoverButton : UIButton = {
        let button = UIButton(type: .system)
        button.isEnabled = false
        button.setTitle("recover", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)// tamanho da fonte e peso da fonte
        button.setTitleColor(.systemGray, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.systemPurple.withAlphaComponent(0.1) // cor com transparencia
        button.layer.cornerRadius = 10 // angulo das bordas
        button.clipsToBounds = true // habilita bordas arredondadas
        button.isEnabled = false
        return button
    }()

    public func configDelegateTextField(delegate: UITextFieldDelegate){ // funcao de campos a serem validados
        recoverTextField.delegate = delegate
    }
    
    
    public func validaTextField(){  // funcao de validacoes de campo
        let email: String = recoverTextField.text ?? ""
        
        if !email.isEmpty {
            recoverTextField.layer.borderWidth = 0
            buttonRecoverButton.isEnabled = false
            buttonRecoverButton.setTitleColor(.white, for: .normal)
        }
        else {
            recoverTextField.layer.borderWidth = 2
            recoverTextField.layer.borderColor = UIColor.red.cgColor
            buttonRecoverButton.isEnabled = true
            buttonRecoverButton.setTitleColor(.systemGray, for: .normal)
        }
    }
    
    private func setupDismissKeyboard(){
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tapGestureRecognizer.cancelsTouchesInView = false
        addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc private func dismissKeyboard(){
        if recoverTextField.text?.isEmpty == true {
            recoverTextField.layer.borderWidth = 2
            recoverTextField.layer.borderColor = UIColor.red.cgColor        }
        else {
            recoverTextField.layer.borderWidth = 0
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        constraints()
        setupDismissKeyboard()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func addElements() {
        addSubview(backgroundimage)
        addSubview(labelRecover)
        addSubview(imageRecover)
//        addSubview(lineView)
        addSubview(recoverTextField)
        addSubview(lineRecoverTextField)
        addSubview(buttonRecoverButton)
    }
    
    private func constraints() {
        NSLayoutConstraint.activate([
            backgroundimage.topAnchor.constraint(equalTo: topAnchor),
            backgroundimage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundimage.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundimage.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            labelRecover.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 90),
            labelRecover.centerXAnchor.constraint(equalTo: centerXAnchor),
            labelRecover.leadingAnchor.constraint(greaterThanOrEqualTo: leadingAnchor, constant: 20),
            labelRecover.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor, constant: -20),
            
            imageRecover.topAnchor.constraint(equalTo: labelRecover.bottomAnchor, constant: 60),
            imageRecover.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageRecover.widthAnchor.constraint(equalToConstant: 80),
            imageRecover.heightAnchor.constraint(equalToConstant: 80),
            
//           lineView.topAnchor.constraint(equalTo: imageRecover.bottomAnchor, constant: 30),
//            lineView.widthAnchor.constraint(equalToConstant: 250),
//            lineView.centerXAnchor.constraint(equalTo: centerXAnchor),
//            lineView.heightAnchor.constraint(equalToConstant: 1),
            
            recoverTextField.topAnchor.constraint(equalTo: imageRecover.bottomAnchor, constant: 80),
            recoverTextField.leadingAnchor.constraint(equalTo: labelRecover.leadingAnchor),
            recoverTextField.trailingAnchor.constraint(equalTo: labelRecover.trailingAnchor),
            
            lineRecoverTextField.topAnchor.constraint(equalTo: recoverTextField.bottomAnchor, constant: 1),
            lineRecoverTextField.widthAnchor.constraint(equalToConstant: 320),
            lineRecoverTextField.centerXAnchor.constraint(equalTo: centerXAnchor),
            lineRecoverTextField.heightAnchor.constraint(equalToConstant: 1),
            
            buttonRecoverButton.topAnchor.constraint(equalTo: lineRecoverTextField.bottomAnchor, constant: 30),
            buttonRecoverButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonRecoverButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            buttonRecoverButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            buttonRecoverButton.heightAnchor.constraint(equalToConstant: 50),
    
            ])
    }
    
}
