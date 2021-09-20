//
//  TabBarViewController.swift
//  foraTT
//
//  Created by Bair Nadtsalov on 11.09.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        
        let searchViewController = SearchViewController()
        let historyViewController = HistoryViewController()
        
        searchViewController.title = "Search"
        historyViewController.title = "History"
        
        setViewControllers([searchViewController, historyViewController], animated: true)
    }
}
