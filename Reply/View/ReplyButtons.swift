//
//  ReplyButtons.swift
//  Reply
//
//  Created by Antonie on 2019/12/18.
//  Copyright © 2019 Stephan Dowless. All rights reserved.
//

import UIKit

class ReplyButtons: UIButton {
    
    let photoLibrary: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        button.setBackgroundImage(#imageLiteral(resourceName: "baseline_settings_white_24dp"), for: UIControlState.normal)
        return button
    }()
    
    let bannerPhotoLibrary: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        button.setBackgroundImage(#imageLiteral(resourceName: "baseline_settings_white_24dp"), for: UIControlState.normal)
        return button
    }()
}
