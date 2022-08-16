//
//  RepositoryListCell.swift
//  GithubRepository
//
//  Created by Yujean Cho on 2022/08/16.
//

import SnapKit
import UIKit

final class RepositoryListCell: UITableViewCell {
    private var repository: Repository?
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = repository?.name
        label.font = .systemFont(ofSize: 15.0, weight: .bold)
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = repository?.description
        label.font = .systemFont(ofSize: 15.0)
        label.numberOfLines = 2
        return label
    }()
    
    private lazy var starImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "star")
        return imageView
    }()
    
    private lazy var starLabel: UILabel = {
        let label = UILabel()
        label.text = "\(repository?.stargazersCount)"
        label.font = .systemFont(ofSize: 16.0)
        label.textColor = .gray
        return label
    }()
    
    private lazy var languageLabel: UILabel = {
        let label = UILabel()
        label.text = repository?.language
        label.font = .systemFont(ofSize: 16.0)
        label.textColor = .gray
        return label
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        [
            nameLabel,
            descriptionLabel,
            starImageView,
            starLabel,
            languageLabel
        ].forEach { contentView.addSubview($0) }
        
        nameLabel.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview().inset(18)
        }
        
        descriptionLabel.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.bottom).offset(3)
            $0.leading.trailing.equalTo(nameLabel)
        }
        
        starImageView.snp.makeConstraints {
            $0.top.equalTo(descriptionLabel.snp.bottom).offset(8)
            $0.leading.equalTo(descriptionLabel)
            $0.width.height.equalTo(20)
            $0.bottom.equalToSuperview().inset(18)
        }
        
        starLabel.snp.makeConstraints {
            $0.centerY.equalTo(starImageView)
            $0.leading.equalTo(starImageView.snp.trailing).offset(5)
        }
        
        languageLabel.snp.makeConstraints {
            $0.centerY.equalTo(starLabel)
            $0.leading.equalTo(starLabel.snp.trailing).offset(12)
        }
    }
}
