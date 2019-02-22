//
//  ProfileViewController.swift
//  ProfileView
//
//  Created by Naattudurai Eswaramurthy on 22/02/19.
//  Copyright © 2019 Naattudurai Eswaramurthy. All rights reserved.
//

import UIKit


class ProfileViewController : UICollectionViewController, UICollectionViewDelegateFlowLayout
{
    let headerId = "headerID"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Profile"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        self.collectionView.alwaysBounceVertical = true
        let headerNib = UINib(nibName: "headerView", bundle: nil)
        self.collectionView.register(headerNib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        return CGSize(width: self.view.frame.width, height: self.view.frame.width)
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
        
        return headerView
    }
    
    
    
}
