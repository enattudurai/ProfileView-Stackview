//
//  ProfileImageView.swift
//  ProfileView
//
//  Created by Naattudurai Eswaramurthy on 22/02/19.
//  Copyright © 2019 Naattudurai Eswaramurthy. All rights reserved.
//

import UIKit

class ProfileImageView: UIImageView {
    
    let imageIndexLabel: UILabel = {
        let indexLabel = UILabel()
        indexLabel.textColor = .white
        indexLabel.font = UIFont.boldSystemFont(ofSize: 18)
        indexLabel.textAlignment = .center
        indexLabel.layer.shadowOpacity = 0.7
        indexLabel.layer.shadowOffset = .zero
        
        return indexLabel
    }()
    
    @IBInspectable var imageIndex: NSNumber = 0.0  {
        didSet {
            let imageName = "image\(imageIndex.stringValue)"
            let userImage = UIImage(named: imageName)
            self.image = userImage
            layer.cornerRadius = 10
            imageIndexLabel.text = imageIndex.stringValue
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        addSubview(imageIndexLabel);
        
        imageIndexLabel.translatesAutoresizingMaskIntoConstraints = false
        imageIndexLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        imageIndexLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
        
        
        
    }
    
}
