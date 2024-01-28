//
//  ContentsViewController.swift
//  CodeBasePractice
//
//  Created by Greed on 1/26/24.
//

import UIKit

class ContentsViewController: UIViewController {
    
    var naviTitle = UILabel()
    var pageTilteLabel = UILabel()
    var infoLabel = UILabel()
    var backImage = UIImageView()
    var oneButton = UIButton()
    var twoButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        configureHierarchy()
        configureView()
        setupConstraints()
    }

}

extension ContentsViewController: CodeBaseProtocol {
    
    func configureHierarchy() {
        view.addSubview(naviTitle)
        view.addSubview(pageTilteLabel)
        view.addSubview(infoLabel)
        view.addSubview(backImage)
        view.addSubview(oneButton)
        view.addSubview(twoButton)
    }
    
    func configureView() {
        naviTitle.text = "저장한 콘텐츠 목록"
        naviTitle.textColor = .white
        naviTitle.textAlignment = .center
        naviTitle.font = .boldSystemFont(ofSize: 22)
        
        
        pageTilteLabel.text = "'나만의 자동 저장' 기능"
        pageTilteLabel.textAlignment = .center
        pageTilteLabel.textColor = .white
        pageTilteLabel.font = .boldSystemFont(ofSize: 20)
        
        infoLabel.text = "취향에 맞는 영화와 시리즈를 자동으로 저장해 드립니다. 디바이스에 언제나 시청할 콘텐츠가 준비되니 지루할 틈이 없어요."
        infoLabel.textAlignment = .center
        infoLabel.textColor = .systemGray
        infoLabel.font = .systemFont(ofSize: 15)
        infoLabel.numberOfLines = 3
        
        backImage.image = .dummy
        
        oneButton.setTitle("설정하기", for: .normal)
        oneButton.setTitleColor(.white, for: .normal)
        oneButton.backgroundColor = .systemBlue
        oneButton.layer.cornerRadius = 8
        
        twoButton.setTitle("저장 가능한 콘텐츠 살펴보기", for: .normal)
        twoButton.setTitleColor(.black, for: .normal)
        twoButton.titleLabel?.font = .boldSystemFont(ofSize: 16)
        twoButton.backgroundColor = .white
        twoButton.layer.cornerRadius = 8
    }
    
    func setupConstraints() {
        naviTitle.snp.makeConstraints { make in
            make.top.equalTo(50)
            make.horizontalEdges.equalTo(view)
        }
        
        pageTilteLabel.snp.makeConstraints { make in
            make.top.equalTo(naviTitle.snp.bottom).offset(150)
            make.horizontalEdges.equalTo(view)
        }
        
        infoLabel.snp.makeConstraints { make in
            make.top.equalTo(pageTilteLabel.snp.bottom)
            make.horizontalEdges.equalTo(view).inset(10)
        }
        
        backImage.snp.makeConstraints { make in
            make.top.equalTo(infoLabel.snp.bottom)
            make.horizontalEdges.equalTo(view)
        }
        
        oneButton.snp.makeConstraints { make in
            make.top.equalTo(backImage.snp.bottom).offset(50)
            make.horizontalEdges.equalTo(view).inset(70)
            make.height.equalTo(40)
        }
        
        twoButton.snp.makeConstraints { make in
            make.top.equalTo(oneButton.snp.bottom).offset(16)
            make.horizontalEdges.equalTo(view).inset(90)
            make.height.equalTo(40)
        }
    }
    
}

#Preview {
    ContentsViewController()
}
