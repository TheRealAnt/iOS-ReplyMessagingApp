//
//  ProfileView.swift
//  SideMenuTutorial
//
//  Created by Antonie on 2019/12/16.
//  Copyright © 2019 Stephan Dowless. All rights reserved.
//

import UIKit

class ProfileView: UIViewController {
    
    // MARK: - Properties
    
    let bannerImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.backgroundColor = .blue
        
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.leadingAnchor.constraint(equalTo: iv.leadingAnchor).isActive = true
        iv.trailingAnchor.constraint(equalTo: iv.trailingAnchor).isActive = true
        iv.topAnchor.constraint(equalTo: iv.topAnchor).isActive = true
        iv.bottomAnchor.constraint(equalTo: iv.bottomAnchor).isActive = true
        
        return iv
    }()
    
    let avatarImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        return iv
    }()
    
    let displayNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "display name"
        return label
    }()
    
    let aboutLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "about me text"
        return label
    }()
    
    // MARK: - Init
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        configureUI()
//    }
    
    public func configureUI() {
        view.backgroundColor = .red
        
//        view.addSubview(bannerImageView)
//        bannerImageView.translatesAutoresizingMaskIntoConstraints = false
//        bannerImageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
//        bannerImageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
//        bannerImageView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
//        bannerImageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
    
    // MARK: - Handlers
    
}
