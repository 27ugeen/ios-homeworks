//
//  PhotosTableViewCell.swift
//  Navigation
//
//  Created by GiN Eugene on 08.08.2021.
//

import UIKit

class PhotosTableViewCell: UITableViewCell {
    
    let photoWidth = (UIScreen.main.bounds.width - 48) / 4
    
    let titleLableView: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textColor = .black
        label.text = "Photos"
        return label
    }()
    
    let buttonView: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setBackgroundImage(UIImage(systemName: "arrow.right"), for: .normal)
        button.tintColor = .black
        return button
    }()
    
    
    private lazy var photosPreview: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        
        view.register(PhotosShortCollectionViewCell.self, forCellWithReuseIdentifier: String(describing: PhotosShortCollectionViewCell.self))
        
        view.dataSource = self
        view.delegate = self

        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension PhotosTableViewCell {
    
    private func setupViews() {
        contentView.addSubview(titleLableView)
        contentView.addSubview(buttonView)
        contentView.addSubview(photosPreview)
        
        let constraints = [
            titleLableView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            titleLableView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 12),
            
            buttonView.centerYAnchor.constraint(equalTo: titleLableView.centerYAnchor),
            buttonView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            buttonView.heightAnchor.constraint(equalToConstant: 24),
            
            photosPreview.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant:  12),
            photosPreview.topAnchor.constraint(equalTo: titleLableView.bottomAnchor, constant: 12),
            photosPreview.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            photosPreview.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            photosPreview.heightAnchor.constraint(equalToConstant: photoWidth),
            
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
}

extension PhotosTableViewCell: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return PhotosStorage.tableModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return PhotosStorage.tableModel[section].photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = photosPreview.dequeueReusableCell(withReuseIdentifier: String(describing: PhotosShortCollectionViewCell.self), for: indexPath) as! PhotosShortCollectionViewCell
        cell.photo = PhotosStorage.tableModel[indexPath.section].photos[indexPath.item]
        return cell
    }
}

extension PhotosTableViewCell: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: photoWidth, height: photoWidth)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
}
