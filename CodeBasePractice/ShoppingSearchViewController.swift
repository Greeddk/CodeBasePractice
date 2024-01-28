//
//  ShoppingSearchViewController.swift
//  CodeBasePractice
//
//  Created by Greed on 1/28/24.
//

import UIKit

class ShoppingSearchViewController: UIViewController {
    
    let naviTitle = UILabel()
    let searchBar = UISearchBar()
    let recentLabel = UILabel()
    let allDeleteButton = UIButton()
    let searchTableView = UITableView()  

    override func viewDidLoad() {
        super.viewDidLoad()

        configureHierarchy()
        configureView()
        setupConstraints()
    }
    

}

extension ShoppingSearchViewController: CodeBaseProtocol {
    
    func configureHierarchy() {
        view.addSubview(naviTitle)
        view.addSubview(searchBar)
        view.addSubview(recentLabel)
        view.addSubview(allDeleteButton)
        view.addSubview(searchTableView)
    }
    
    func configureView() {
        naviTitle.text = "떠나고싶은 홈런볼님의 새싹쇼핑"
        naviTitle.textColor = .white
        naviTitle.textAlignment = .center
        naviTitle.font = .boldSystemFont(ofSize: 20)
        
        searchBar.placeholder = "브랜드, 상품, 프로필, 태그 등"
        
        recentLabel.text = "최근 검색"
        recentLabel.textColor = .white
        recentLabel.font = .systemFont(ofSize: 16)
        
        allDeleteButton.setTitle("모두 지우기", for: .normal)
        allDeleteButton.setTitleColor(.green, for: .normal)
        allDeleteButton.titleLabel?.font = .systemFont(ofSize: 16)
        allDeleteButton.backgroundColor = .clear
        
        searchTableView.delegate = self
        searchTableView.dataSource = self
        searchTableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "CustomTableViewCell")
        searchTableView.separatorStyle = .none
        searchTableView.rowHeight = 70
    }
    
    func setupConstraints() {
        naviTitle.snp.makeConstraints { make in
            make.top.equalTo(50)
            make.horizontalEdges.equalTo(view)
        }
        
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(naviTitle.snp.bottom).offset(16)
            make.horizontalEdges.equalTo(view).inset(8)
            make.height.equalTo(40)
        }
        
        recentLabel.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(16)
            make.leading.equalTo(8)
            make.height.equalTo(22)
        }
        
        allDeleteButton.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(14)
            make.trailing.equalTo(view).offset(-8)
            make.height.equalTo(22)
        }
        
        searchTableView.snp.makeConstraints { make in
            make.top.equalTo(recentLabel.snp.bottom)
            make.leading.bottom.trailing.equalTo(view.safeAreaLayoutGuide)
        }
        
    }
    
}

extension ShoppingSearchViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        
        return cell
    }
    
}

#Preview {
    ShoppingTabBarViewController()
}
