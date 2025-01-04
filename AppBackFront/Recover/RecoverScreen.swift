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
            
            ])
    }
    
}
