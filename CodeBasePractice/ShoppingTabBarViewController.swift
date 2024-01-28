//
//  ShoppingTabBarViewController.swift
//  CodeBasePractice
//
//  Created by Greed on 1/28/24.
//

import UIKit

class ShoppingTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let searchView = UINavigationController(rootViewController: ShoppingSearchViewController())
        let settingView = UINavigationController(rootViewController: SettingViewController())
        
        searchView.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        settingView.tabBarItem.image = UIImage(systemName: "person")
        
        searchView.title = "검색"
        settingView.title = "설정"
        
        tabBar.tintColor = .green
        
        setViewControllers([searchView, settingView], animated: true)
    }

}
