//
//  ProfileController.swift
//  SideMenuTutorial
//
//  Created by Antonie on 2019/12/16.
//  Copyright © 2019 Stephan Dowless. All rights reserved.
//

import UIKit

class ProfileController: UIViewController {
    
    // MARK: - Properties
    
    let avatarImageView = AvatarImageView()
    let bannerImageView = BannerImageView()
    let replyLabels = ReplyLabels()
    
    private let avatarWidthHeight = CGFloat(160)
    private let avatarBorderWidth = CGFloat(4)
    private let bannerHeight = CGFloat(180)
    private let bioText = "Some bio text"
    
//    let displayNameLabel: UILabel = {
//        let label = UILabel()
//        label.textColor = .black
//        label.font = UIFont.systemFont(ofSize: 22)
//        label.text = "TheRealAnt"
//        return label
//    }()
    
    let bannerImageSetting: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "baseline_settings_white_24dp")
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        return iv
    }()
    
    let avatarImageSetting: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "baseline_settings_white_24dp")
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        return iv
    }()
    
    
    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        setupBannerImageView()
        setupAvatarImageView()
        setupDisplayNameLabel()
        setupBioLabel()
        //setupBannerSettingImage()
        //setupAvatarSettingImage()
    }
    
    func configureUI() {
        let profileView = ProfileView()
        
        view.addSubview(profileView.bannerImageView)
        
        view.backgroundColor = .white
        
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Profile"
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_clear_white_36pt_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
    }
    
    func setupBannerImageView(){
        view.addSubview(bannerImageView.banner)
        bannerImageView.banner.translatesAutoresizingMaskIntoConstraints = false
        bannerImageView.banner.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        bannerImageView.banner.heightAnchor.constraint(equalToConstant: bannerHeight).isActive = true
        bannerImageView.banner.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        bannerImageView.banner.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    func setupAvatarImageView(){
        view.addSubview(avatarImageView.avatar)
        avatarImageView.avatar.translatesAutoresizingMaskIntoConstraints = false
        avatarImageView.avatar.centerXAnchor.constraint(equalTo: bannerImageView.banner.centerXAnchor).isActive = true
        avatarImageView.avatar.topAnchor.constraint(equalTo: bannerImageView.banner.bottomAnchor, constant: -(bannerHeight/2)).isActive = true
        avatarImageView.avatar.heightAnchor.constraint(equalToConstant: avatarWidthHeight).isActive = true
        avatarImageView.avatar.widthAnchor.constraint(equalToConstant: avatarWidthHeight).isActive = true
        
        avatarImageView.avatar.layer.cornerRadius = avatarWidthHeight/2
        avatarImageView.avatar.layer.borderWidth = avatarBorderWidth
    }
    
    func setupDisplayNameLabel(){
        view.addSubview(replyLabels.displayName)
        replyLabels.displayName.translatesAutoresizingMaskIntoConstraints = false
        replyLabels.displayName.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        replyLabels.displayName.topAnchor.constraint(equalTo: avatarImageView.avatar.bottomAnchor, constant: 20).isActive = true
    }
    
    func setupBioLabel(){
        view.addSubview(replyLabels.bio)
        
        replyLabels.bio.text = bioText
        replyLabels.bio.translatesAutoresizingMaskIntoConstraints = false
        replyLabels.bio.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        replyLabels.bio.topAnchor.constraint(equalTo: replyLabels.displayName.bottomAnchor, constant: 20).isActive = true
    }
    
    func setupBannerSettingImage(){
        view.addSubview(bannerImageSetting)
        bannerImageSetting.translatesAutoresizingMaskIntoConstraints = false
        bannerImageSetting.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        bannerImageSetting.heightAnchor.constraint(equalToConstant: 20).isActive = true
        bannerImageSetting.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
    }
    
    func setupAvatarSettingImage(){
        view.addSubview(avatarImageSetting)
        avatarImageSetting.translatesAutoresizingMaskIntoConstraints = false
        avatarImageSetting.topAnchor.constraint(equalTo: avatarImageView.avatar.topAnchor, constant: 10).isActive = true
        avatarImageSetting.heightAnchor.constraint(equalToConstant: 20).isActive = true
        avatarImageSetting.trailingAnchor.constraint(equalTo: avatarImageView.avatar.trailingAnchor, constant: -10).isActive = true
    }
    
    // MARK: - Handlers
    
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
}
