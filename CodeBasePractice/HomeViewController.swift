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
    let playButton = UIButton()
    let likeButton = UIButton()
    
    let hotContentLabel = UILabel()
    lazy var contentCollectionView = UICollectionView(frame: CGRect(x: 10, y: 550, width: 360, height: 200), collectionViewLayout: collectionViewLayout())
    
    func collectionViewLayout() -> UICollectionViewFlowLayout {
        
        let layout = UICollectionViewFlowLayout()
        return layout
    }

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
        view.addSubview(playButton)
        view.addSubview(likeButton)
        view.addSubview(hotContentLabel)
        view.addSubview(contentCollectionView)
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
    }
    
    func setupConstraints() {
        nicknameLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(55)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide)
        }
        
        posterImage.snp.makeConstraints { make in
            make.width.equalTo(view).inset(16)
            make.height.equalTo(UIScreen.main.bounds.height / 2)
            make.centerX.equalTo(view)
            make.top.equalTo(nicknameLabel).offset(32)
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
            make.leading.equalTo(8)
        }
        
    }

}


#Preview {
    MainTabBarViewController()
}
    
