//
//  SearchBarView.swift
//  foraTT
//
//  Created by Bair Nadtsalov on 11.09.2021.
//

import UIKit

class SearchBarView: UISearchBar {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .systemRed
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
