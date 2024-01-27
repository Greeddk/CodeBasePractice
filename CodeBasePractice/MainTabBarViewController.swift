//
//  ViewController.swift
//  CodeBasePractice
//
//  Created by Greed on 1/26/24.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        let homeView = UINavigationController(rootViewController: HomeViewController())
        let searchView = UINavigationController(rootViewController: SearchViewController())
        let contentView = UINavigationController(rootViewController: ContentsViewController())
        
        homeView.tabBarItem.image = UIImage(systemName:"house")
        searchView.tabBarItem.image = UIImage(systemName: "play.rectangle.on.rectangle")
        contentView.tabBarItem.image = UIImage(systemName: "arrow.down.circle")
        
        homeView.title = "홈"
        searchView.title = "NEW & HOT"
        contentView.title = "저장된 콘텐츠 목록"
        
        tabBar.unselectedItemTintColor = .systemGray
        tabBar.tintColor = .white
        tabBar.backgroundColor = .primaryColor
        
        setViewControllers([homeView, searchView, contentView], animated: true)
    }

}

