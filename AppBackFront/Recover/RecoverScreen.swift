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

    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        constraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func addElements() {
        addSubview(backgroundimage)
        addSubview(labelRecover)
        addSubview(imageRecover)
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
            
            ])
    }
    
}
