//
//  SearchViewController.swift
//  CodeBasePractice
//
//  Created by Greed on 1/26/24.
//

import UIKit

class SearchViewController: UIViewController {
    
    let naviTitle = UILabel()
    let searchBar = UISearchBar()
    let oneButton = UIButton()
    let twoButton = UIButton()
    let threeButton = UIButton()
    let noContentLabel = UILabel()
    let infoLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureHierarchy()
        configureView()
        setupConstraints()
    }

}

extension SearchViewController: CodeBaseProtocol {
    
    func configureHierarchy() {
        view.addSubview(naviTitle)
        view.addSubview(searchBar)
        view.addSubview(oneButton)
        view.addSubview(twoButton)
        view.addSubview(threeButton)
        view.addSubview(noContentLabel)
        view.addSubview(infoLabel)
    }
    
    func configureView() {  
        
        view.backgroundColor = .black

        naviTitle.text = "NEW & HOT 검색"
        naviTitle.textColor = .white
        naviTitle.textAlignment = .center
        naviTitle.font = .boldSystemFont(ofSize: 20)
        
        searchBar.placeholder = "게임, 시리즈, 영화를 검색하세요..."
        
        oneButton.setTitle("공개예정", for: .normal)
        oneButton.setTitleColor(.black, for: .normal)
        oneButton.titleLabel?.font = .systemFont(ofSize: 14)
        oneButton.setImage(UIImage(named: "blue"), for: .normal)
        oneButton.layer.cornerRadius = 16
        oneButton.backgroundColor = .white
        
        twoButton.setTitle("모두의 인기 콘텐츠", for: .normal)
        twoButton.setTitleColor(.white, for: .normal)
        twoButton.titleLabel?.font = .systemFont(ofSize: 14)
        twoButton.setImage(UIImage(named: "green"), for: .normal)
        twoButton.layer.cornerRadius = 16
        twoButton.backgroundColor = .black
        
        threeButton.setTitle("TOP 10 시리즈", for: .normal)
        threeButton.setTitleColor(.white, for: .normal)
        threeButton.titleLabel?.font = .systemFont(ofSize: 14)
        threeButton.setImage(UIImage(named: "pink"), for: .normal)
        threeButton.layer.cornerRadius = 16
        threeButton.backgroundColor = .black
        
        noContentLabel.text = "이런! 찾으시는 작품이 없습니다."
        noContentLabel.textColor = .white
        noContentLabel.textAlignment = .center
        noContentLabel.font = .boldSystemFont(ofSize: 24)
        
        infoLabel.text = "다른 영화, 시리즈, 배우, 감독 또는 장르를 검색해 보세요."
        infoLabel.textColor = .systemGray
        infoLabel.textAlignment = .center
        infoLabel.font = .systemFont(ofSize: 16)
        
    }
    
    func setupConstraints() {
        naviTitle.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.width.equalToSuperview()
            make.height.equalTo(22)
        }
        
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(naviTitle.snp.bottom).offset(8)
            make.horizontalEdges.equalToSuperview().inset(20)
            make.height.equalTo(40)
        }
        
        oneButton.snp.makeConstraints { make in
            make.leading.equalTo(4)
            make.top.equalTo(searchBar.snp.bottom).offset(12)
            make.width.equalTo(100)
            make.height.equalTo(35)
        }
        
        twoButton.snp.makeConstraints { make in
            make.leading.equalTo(oneButton.snp.trailing).offset(4)
            make.top.equalTo(searchBar.snp.bottom).offset(12)
            make.width.equalTo(150)
            make.height.equalTo(35)
        }
        
        threeButton.snp.makeConstraints { make in
            make.leading.equalTo(twoButton.snp.trailing).offset(4)
            make.top.equalTo(searchBar.snp.bottom).offset(12)
            make.width.equalTo(120)
            make.height.equalTo(35)
        }
        
        noContentLabel.snp.makeConstraints { make in
            make.top.equalTo(oneButton.snp.bottom).offset(120)
            make.horizontalEdges.equalTo(view)
        }
        
        infoLabel.snp.makeConstraints { make in
            make.top.equalTo(noContentLabel.snp.bottom).offset(4)
            make.horizontalEdges.equalTo(view)
        }
        
        
    }
    
}

#Preview {
    SearchViewController()
}
