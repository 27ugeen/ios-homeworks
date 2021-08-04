//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by GiN Eugene on 25.07.2021.
//

import UIKit

class ProfileHeaderView: UIView {
    
    let profileHeaderView: ProfileHeaderView = {
        let profile = ProfileHeaderView()
        profile.translatesAutoresizingMaskIntoConstraints = false
        profile.backgroundColor = .lightGray
        return profile
    }()
    
    let setTitleButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .lightGray
        button.setTitle("Set title", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.red, for: .selected)
        button.setTitleColor(.purple, for: .highlighted)
        button.addTarget(self, action: #selector(setTitleButtonPressed), for: .touchUpInside)
        return button
    }()
    
    let avatarImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.borderWidth = 3
        image.layer.borderColor = UIColor.white.cgColor
        image.image = UIImage(named: "blackCat")
        image.layer.cornerRadius = 110 / 2
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let fullNameLabel: UILabel = {
        let name = UILabel()
        name.translatesAutoresizingMaskIntoConstraints = false
        name.text = "Hipster Cat"
        name.textColor = .black
        name.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return name
    }()
    
    let statusLabel: UILabel = {
        let status = UILabel()
        status.translatesAutoresizingMaskIntoConstraints = false
        status.text = "Waiting for something..."
        status.textColor = .gray
        status.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        return status
    }()
    
    let statusTextField: UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        text.backgroundColor = .white
        text.layer.cornerRadius = 12
        text.layer.borderWidth = 1
        text.layer.borderColor = UIColor.black.cgColor
        text.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: text.frame.height))
        text.leftViewMode = .always
        return text
    }()
    
    let setStatusButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 14
        button.setTitle("Set status", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.purple, for: .highlighted)
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.7
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowColor = UIColor.black.cgColor
        button.addTarget(self, action: #selector(setStatusButtonPressed), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    private func setStatusButtonPressed() {
        print("Set status button pressed...")
        (statusTextField.text == "" || statusTextField.text == nil) ?
            (statusLabel.text = "Write something!") :
            (statusLabel.text = statusTextField.text)
        statusTextField.text = ""
    }
    
    @objc
    func setTitleButtonPressed() {
        print("Set title button pressed...")
    }
}

extension ProfileHeaderView {
    private func setupViews(){
        
        
        addSubview(profileHeaderView)
        addSubview(setTitleButton)
        
        profileHeaderView.addSubview(avatarImage)
        profileHeaderView.addSubview(fullNameLabel)
        profileHeaderView.addSubview(statusLabel)
        profileHeaderView.addSubview(statusTextField)
        profileHeaderView.addSubview(setStatusButton)
        
        let constraints = [
            profileHeaderView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            profileHeaderView.leadingAnchor.constraint(equalTo: leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: trailingAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
            
            setTitleButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            setTitleButton.trailingAnchor.constraint(equalTo: trailingAnchor),
            setTitleButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            setTitleButton.heightAnchor.constraint(equalToConstant: 50),
            
            avatarImage.topAnchor.constraint(equalTo: profileHeaderView.topAnchor, constant: 16),
            avatarImage.leadingAnchor.constraint(equalTo: profileHeaderView.leadingAnchor, constant: 16),
            avatarImage.widthAnchor.constraint(equalToConstant: 110),
            avatarImage.heightAnchor.constraint(equalToConstant: 110),
            
            fullNameLabel.topAnchor.constraint(equalTo: profileHeaderView.topAnchor, constant: 16),
            fullNameLabel.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 16),
            
            setStatusButton.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: 46),
            setStatusButton.leadingAnchor.constraint(equalTo: profileHeaderView.leadingAnchor, constant: 16),
            setStatusButton.trailingAnchor.constraint(equalTo: profileHeaderView.trailingAnchor, constant: -16),
            setStatusButton.heightAnchor.constraint(equalToConstant: 50),
            
            statusTextField.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 16),
            statusTextField.trailingAnchor.constraint(equalTo: profileHeaderView.trailingAnchor, constant: -16),
            statusTextField.bottomAnchor.constraint(equalTo: setStatusButton.topAnchor, constant: -16),
            statusTextField.heightAnchor.constraint(equalToConstant: 40),
            
            statusLabel.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: 16),
            statusLabel.bottomAnchor.constraint(equalTo: statusTextField.topAnchor, constant: -8)
            
        ]
        NSLayoutConstraint.activate(constraints)
    }
}
