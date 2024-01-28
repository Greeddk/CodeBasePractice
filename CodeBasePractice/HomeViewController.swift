//
//  HomeViewController.swift
//  CodeBasePractice
//
//  Created by Greed on 1/26/24.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    let nicknameLabel = UILabel()
    let posterImage = UIImageView()
    let posterBackView = UIImageView()
    let playButton = UIButton()
    let likeButton = UIButton()
    
    let hotContentLabel = UILabel()
    let oneHotContentImage = UIImageView()
    let twoHotContentImage = UIImageView()
    let threeHotContentImage = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .clear

        configureHierarchy()
        configureView()
        setupConstraints()
    }

}

extension HomeViewController: CodeBaseProtocol {
    
    func configureHierarchy() {
        view.addSubview(nicknameLabel)
        view.addSubview(posterImage)
        view.addSubview(posterBackView)
        view.addSubview(playButton)
        view.addSubview(likeButton)
        view.addSubview(hotContentLabel)
        view.addSubview(oneHotContentImage)
        view.addSubview(twoHotContentImage)
        view.addSubview(threeHotContentImage)
    }
    
    func configureView() {
        nicknameLabel.text = "홈런볼님"
        nicknameLabel.textColor = .white
        nicknameLabel.textAlignment = .center
        nicknameLabel.font = .boldSystemFont(ofSize: 22)
        
        posterImage.image = ._1
        posterImage.clipsToBounds = true
        posterImage.layer.cornerRadius = 20
        posterImage.contentMode = .scaleAspectFill
        
        posterBackView.image = .background
        
        playButton.backgroundColor = .white
        playButton.setTitle("재생", for: .normal)
        playButton.setTitleColor(.black, for: .normal)
        playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
        playButton.tintColor = .black
        playButton.layer.cornerRadius = 4
        
        likeButton.backgroundColor = .primaryColor
        likeButton.setTitle("내가 찜한 리스트", for: .normal)
        likeButton.setTitleColor(.white, for: .normal)
        likeButton.setImage(UIImage(systemName: "plus"), for: .normal)
        likeButton.tintColor = .white
        likeButton.layer.cornerRadius = 4
        
        hotContentLabel.textColor = .white
        hotContentLabel.text = "지금 뜨는 콘텐츠"
        hotContentLabel.font = .boldSystemFont(ofSize: 18)
        
        oneHotContentImage.image = ._3
        oneHotContentImage.clipsToBounds = true
        oneHotContentImage.layer.cornerRadius = 8
        
        twoHotContentImage.image = .밀수
        twoHotContentImage.clipsToBounds = true
        twoHotContentImage.layer.cornerRadius = 8
        
        threeHotContentImage.image = .서울의봄
        threeHotContentImage.clipsToBounds = true
        threeHotContentImage.layer.cornerRadius = 8
    }
    
    func setupConstraints() {
        nicknameLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(50)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide)
        }
        
        posterImage.snp.makeConstraints { make in
            make.width.equalTo(view).inset(8)
            make.height.equalTo(UIScreen.main.bounds.height / 2)
            make.centerX.equalTo(view)
            make.top.equalTo(nicknameLabel).offset(32)
        }
        
        posterBackView.snp.makeConstraints { make in
            make.edges.equalTo(posterImage)
            make.size.equalTo(posterImage)
        }
        
        playButton.snp.makeConstraints { make in
            make.bottom.equalTo(posterImage.snp.bottom).offset(-16)
            make.leading.equalTo(posterImage.snp.leading).offset(16)
            make.width.equalTo(160)
            make.height.equalTo(50)
        }
        
        likeButton.snp.makeConstraints { make in
            make.bottom.equalTo(playButton.snp.bottom)
            make.trailing.equalTo(posterImage.snp.trailing).offset(-16)
            make.width.equalTo(160)
            make.height.equalTo(50)
        }
        
        hotContentLabel.snp.makeConstraints { make in
            make.top.equalTo(posterImage.snp.bottom).offset(8)
            make.leading.equalTo(10)
            make.height.equalTo(20)
        }
        
        oneHotContentImage.snp.makeConstraints { make in
            make.top.equalTo(hotContentLabel.snp.bottom).offset(8)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-8)
            make.leading.equalTo(posterImage.snp.leading)
            make.width.equalTo(UIScreen.main.bounds.width / 3 - 10)
        }
        
        twoHotContentImage.snp.makeConstraints { make in
            make.top.equalTo(oneHotContentImage.snp.top)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-8)
            make.leading.equalTo(oneHotContentImage.snp.trailing).offset(10)
            make.width.equalTo(UIScreen.main.bounds.width / 3 - 10)
        }
        
        threeHotContentImage.snp.makeConstraints { make in
            make.top.equalTo(oneHotContentImage.snp.top)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-8)
            make.leading.equalTo(twoHotContentImage.snp.trailing).offset(10)
            make.width.equalTo(UIScreen.main.bounds.width / 3 - 10)
        }
        
    }

}


#Preview {
    MainTabBarViewController()
}
    
