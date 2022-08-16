//
//  RepositoryListCell.swift
//  GithubRepository
//
//  Created by Yujean Cho on 2022/08/16.
//

import SnapKit
import UIKit

final class RepositoryListCell: UITableViewCell {
    var repository: String?
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    private lazy var starImageView: UIImageView = {
        let imageView = UIImageView()
        
        return imageView
    }()
    
    private lazy var starLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    private lazy var languageLabel: UILabel = {
        let label = UILabel()
        
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
    }
}
