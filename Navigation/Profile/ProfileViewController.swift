//
//  ProfileViewController.swift
//  Navigation
//
//  Created by GiN Eugene on 20.07.2021.
//

import UIKit

//class ProfileViewController: UIViewController {
//
//    let profileHeaderView: ProfileHeaderView = {
//        let profile = ProfileHeaderView()
//        profile.translatesAutoresizingMaskIntoConstraints = false
//        return profile
//    }()
//
//    let setTitleButton: UIButton = {
//        let button = UIButton()
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.backgroundColor = .lightGray
//        button.setTitle("Set title", for: .normal)
//        button.setTitleColor(.white, for: .normal)
//        button.setTitleColor(.red, for: .selected)
//        button.setTitleColor(.purple, for: .highlighted)
//        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
//        return button
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setupViews()
//    }
//
//    @objc func buttonPressed() {
//       print("Set title button pressed...")
//    }
//}

//extension ProfileViewController {
//    private func setupViews(){
//
//        view.backgroundColor = .lightGray
//        view.addSubview(profileHeaderView)
//        view.addSubview(setTitleButton)
//
//        let constraints = [
//            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
//
//            setTitleButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            setTitleButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            setTitleButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//            setTitleButton.heightAnchor.constraint(equalToConstant: 50)
//        ]
//        NSLayoutConstraint.activate(constraints)
//    }
//}


class ProfileViewController: UIViewController {
    
    let tableView = UITableView(frame: .zero, style: .insetGrouped)
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        setupConstraints()
    }
}

extension ProfileViewController {
    func setupTableView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
        tableView.dataSource = self
        
    }
}

extension ProfileViewController {
    func setupConstraints() {
        let constraints = [
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }
}

extension ProfileViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel?.text = "\(indexPath.section) \(indexPath.row)"
//        cell.accessoryType = .checkmark
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Title \(section)"
    }
    
}
