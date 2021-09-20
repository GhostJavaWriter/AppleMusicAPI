//
//  resultsCollectionView.swift
//  foraTT
//
//  Created by Bair Nadtsalov on 19.09.2021.
//

import Foundation
import UIKit

class ResultsCollectionView: UICollectionView {
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
