//
//  BannerImageView.swift
//  SideMenuTutorial
//
//  Created by Antonie on 2019/12/17.
//  Copyright © 2019 Stephan Dowless. All rights reserved.
//

import UIKit

class BannerImageView: UIImageView {
    
    let banner: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "banner")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 40
        iv.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        iv.backgroundColor = .none
        return iv
    }()
}
