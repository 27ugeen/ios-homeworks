//
//  Photos.swift
//  Navigation
//
//  Created by GiN Eugene on 08.08.2021.
//

import Foundation
import UIKit

struct Photo {
    let image: UIImage
}

struct PhotosSection {
    let photos: [Photo]
}

struct PhotosStorage {
    static let tableModel = [
        PhotosSection(photos: [Photo(image: #imageLiteral(resourceName: "bmw")), Photo(image: #imageLiteral(resourceName: "face-painting")), Photo(image: #imageLiteral(resourceName: "ocean")), Photo(image: #imageLiteral(resourceName: "the-sun")),
                               Photo(image: #imageLiteral(resourceName: "zakynthos")), Photo(image: #imageLiteral(resourceName: "beach")), Photo(image: #imageLiteral(resourceName: "woman2")), Photo(image: #imageLiteral(resourceName: "drop")),
                               Photo(image: #imageLiteral(resourceName: "women")), Photo(image: #imageLiteral(resourceName: "jellyfish")), Photo(image: #imageLiteral(resourceName: "smoothie")), Photo(image: #imageLiteral(resourceName: "strawberries")),
                               Photo(image: #imageLiteral(resourceName: "girl-26")), Photo(image: #imageLiteral(resourceName: "kingfisher")), Photo(image: #imageLiteral(resourceName: "drop")), Photo(image: #imageLiteral(resourceName: "sailboat")),
                               Photo(image: #imageLiteral(resourceName: "bmw")), Photo(image: #imageLiteral(resourceName: "bmw")), Photo(image: #imageLiteral(resourceName: "bmw")), Photo(image: #imageLiteral(resourceName: "bmw")),
                               Photo(image: #imageLiteral(resourceName: "bmw")), Photo(image: #imageLiteral(resourceName: "bmw")), Photo(image: #imageLiteral(resourceName: "bmw")), Photo(image: #imageLiteral(resourceName: "bmw")),
                               Photo(image: #imageLiteral(resourceName: "bmw")), Photo(image: #imageLiteral(resourceName: "bmw")), Photo(image: #imageLiteral(resourceName: "bmw")), Photo(image: #imageLiteral(resourceName: "bmw")),
                               Photo(image: #imageLiteral(resourceName: "bmw")), Photo(image: #imageLiteral(resourceName: "bmw")), Photo(image: #imageLiteral(resourceName: "bmw")), Photo(image: #imageLiteral(resourceName: "bmw")),
                               Photo(image: #imageLiteral(resourceName: "bmw")), Photo(image: #imageLiteral(resourceName: "bmw")), Photo(image: #imageLiteral(resourceName: "bmw")), Photo(image: #imageLiteral(resourceName: "bmw")),
                               Photo(image: #imageLiteral(resourceName: "bmw")), Photo(image: #imageLiteral(resourceName: "bmw")), Photo(image: #imageLiteral(resourceName: "bmw")), Photo(image: #imageLiteral(resourceName: "bmw")),
                               Photo(image: #imageLiteral(resourceName: "bmw")), Photo(image: #imageLiteral(resourceName: "bmw")), Photo(image: #imageLiteral(resourceName: "bmw"))
        ])
    ]
}
