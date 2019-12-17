//
//  ReplyLabels.swift
//  Reply
//
//  Created by Antonie on 2019/12/17.
//  Copyright © 2019 Stephan Dowless. All rights reserved.
//

import UIKit

class ReplyLabels: UILabel {
    
    let displayName: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.text = "The Real Ant"
        return label
    }()
    
    let bio: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.lightGray
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    let phoneNumber: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.lightGray
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    let emailAddress: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.lightGray
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    
    
}
