//
//  ViewController.swift
//  foraTT
//
//  Created by Bair Nadtsalov on 11.09.2021.
//

import UIKit

class SearchViewController: UIViewController, UISearchBarDelegate {

    let searchBarView: UISearchBar = {
        let view = SearchBarView(frame: .zero)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        title = "Search"
        
        configureView()
    }
    
    // MARK: - Private functions
    private func configureView() {
        
        view.addSubview(searchBarView)
        
        searchBarView.delegate = self
        
        searchBarView.translatesAutoresizingMaskIntoConstraints = false
        searchBarView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        searchBarView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        searchBarView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        searchBarView.heightAnchor.constraint(equalToConstant: Constants.heightOfSearchBar.rawValue).isActive = true
    }
    
    // MARK: - UISearchBarDelegate
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("some")
    }
}

