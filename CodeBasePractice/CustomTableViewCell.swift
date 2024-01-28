//
//  CustomTableViewCell.swift
//  CodeBasePractice
//
//  Created by Greed on 1/28/24.
//

import UIKit
import SnapKit

class CustomTableViewCell: UITableViewCell {
    
    let image = UIImageView()
    let text = UILabel()
    let xButton = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureHierarchy()
        configureView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension CustomTableViewCell: CodeBaseProtocol {
    func configureHierarchy() {
        contentView.addSubview(image)
        contentView.addSubview(text)
        contentView.addSubview(xButton)
    }
    
    func configureView() {
        image.image = UIImage(systemName: "magnifyingglass")
        image.tintColor = .white
        
        text.text = "asdfasdf"
        text.textColor = .white
        
        xButton.setTitle("", for: .normal)
        xButton.setImage(UIImage(systemName: "xmark"), for: .normal)
        xButton.tintColor = .systemGray
    }
    
    func setupConstraints() {
        image.snp.makeConstraints { make in
            make.leading.equalTo(contentView).offset(16)
            make.centerY.equalTo(contentView)
        }
        
        text.snp.makeConstraints { make in
            make.leading.equalTo(image.snp.trailing).offset(20)
            make.centerY.equalTo(contentView)
        }
        
        xButton.snp.makeConstraints { make in
            make.trailing.equalTo(contentView).offset(-8)
            make.centerY.equalTo(contentView)
        }
    }
    
    
    
}
