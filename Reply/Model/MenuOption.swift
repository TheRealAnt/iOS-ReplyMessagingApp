//
//  MenuOption.swift
//  SideMenuTutorial
//
//  Created by Stephen Dowless on 12/12/18.
//  Copyright © 2018 Stephan Dowless. All rights reserved.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible {
    
    case Profile
    case TableView
    //case Inbox
    case Notifications
    case Settings
    //case ImageCrop
    
    var description: String {
        switch self {
        case .Profile: return "Profile"
        case .TableView: return "TableView"
        //case .Inbox: return "Inbox"
        case .Notifications: return "Notifications"
        case .Settings: return "Settings"
        //case .ImageCrop: return "Image Crop"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile: return UIImage(named: "ic_person_outline_white_2x") ?? UIImage()
        case .TableView: return UIImage(named: "ic_menu_white_3x") ?? UIImage()
        //case .Inbox: return UIImage(named: "ic_mail_outline_white_2x") ?? UIImage()
        case .Notifications: return UIImage(named: "ic_menu_white_3x") ?? UIImage()
        case .Settings: return UIImage(named: "baseline_settings_white_24dp") ?? UIImage()
        //case .ImageCrop: return UIImage(named: "ic_menu_white_3x") ?? UIImage()
        }
    }
}
