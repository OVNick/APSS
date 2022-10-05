//
//  MenuItemsCell.swift
//  APSS
//
//  Created by Николай Онучин on 03.10.2022.
//

import UIKit

/// Ячейка коллекции пунктов меню.
final class MenuItemsCell: UICollectionViewCell {
    var image: UIImage = UIImage() {
        didSet {
            imageView.image = image
        }
    }
    
    private lazy var imageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.layer.masksToBounds = true
        view.backgroundColor = .lightGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
            
    override init(frame: CGRect) {
        super .init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


// MARK: - Private

private extension MenuItemsCell {
    
    /// Устанавливаем Subview.
    func setupViews() {
        contentView.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            imageView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 0),
            imageView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 0),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
        ])
    }
}

