//
//  KeyboardCell.swift
//  wordall
//
//  Created by Beytullah Özer on 17.04.2022.
//

import UIKit

class KeyboardCell: UICollectionViewCell {
    
    static let identifier = "KeyboardCell"
    
    let keyboardLabel: UILabel = {
        
        let keyboardLabel = UILabel()
        keyboardLabel.translatesAutoresizingMaskIntoConstraints = false
        keyboardLabel.textColor = .white
        keyboardLabel.textAlignment = .center
        keyboardLabel.font = .systemFont(ofSize: 18, weight: .medium)
        return keyboardLabel
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 0.16, green: 0.16, blue: 0.15, alpha: 1.00)
        
        contentView.addSubview(keyboardLabel)
        
        NSLayoutConstraint.activate([
            keyboardLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            keyboardLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            keyboardLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            keyboardLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        keyboardLabel.text = nil
    }
    
    func configure (with letter: Character) {
        keyboardLabel.text = String(letter).uppercased()
    }
}
