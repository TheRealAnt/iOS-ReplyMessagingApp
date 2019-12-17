//
//  AvatarImageView.swift
//  SideMenuTutorial
//
//  Created by Antonie on 2019/12/17.
//  Copyright © 2019 Stephan Dowless. All rights reserved.
//

import UIKit

class AvatarImageView: UIImageView {
    let avatar: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "boy")
        iv.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.layer.borderWidth = 0.2
        iv.layer.borderColor = UIColor.black.cgColor
        iv.layer.cornerRadius = 4
        iv.backgroundColor = .none
        return iv
    }()
}
