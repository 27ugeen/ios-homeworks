//
//  PhotosShortCollectionViewCell.swift
//  Navigation
//
//  Created by GiN Eugene on 14.08.2021.
//

import UIKit

class PhotosShortCollectionViewCell: UICollectionViewCell {
    
    var photo: Photo? {
        didSet {
            area.image = photo?.image
        }
    }
    
    let area: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .black
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 6
        image.clipsToBounds = true
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        contentView.addSubview(area)
        
        let constraints = [
            area.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            area.topAnchor.constraint(equalTo: contentView.topAnchor),
            area.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            area.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ]
        NSLayoutConstraint.activate(constraints)
    }
}
