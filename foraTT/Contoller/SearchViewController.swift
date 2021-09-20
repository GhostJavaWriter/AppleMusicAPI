//
//  ViewController.swift
//  foraTT
//
//  Created by Bair Nadtsalov on 11.09.2021.
//

import UIKit

class SearchViewController: UIViewController, UISearchBarDelegate {

    lazy var searchBarView: UISearchBar = {
        let view = SearchBarView(frame: .zero)
        return view
    }()
    
    lazy var resultsView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        //layout.sectionInset
        //layout.itemSize
        
        let view = ResultsCollectionView(frame: .zero, collectionViewLayout: layout)
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
        
        //add collectionView
        view.addSubview(resultsView)
        
        resultsView.translatesAutoresizingMaskIntoConstraints = false
        resultsView.topAnchor.constraint(equalTo: searchBarView.bottomAnchor).isActive = true
        resultsView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        resultsView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        resultsView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    // MARK: - UISearchBarDelegate
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("some")
    }
}

