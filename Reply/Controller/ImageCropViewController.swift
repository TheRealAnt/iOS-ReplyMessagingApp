//
//  ImageCropViewController.swift
//  SideMenuTutorial
//
//  Created by Antonie on 2019/11/27.
//  Copyright © 2019 Stephan Dowless. All rights reserved.
//

import UIKit

class ImageCropViewController: UIViewController {
    
    // MARK: - Init
    
    let imageView = UIImageView()
    var bgImage: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        showImage()
    }
    
    // MARK: - Selectors
    
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Helper Functions
    func configureUI() {
        view.backgroundColor = .white
        
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Image Crop"
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_clear_white_36pt_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
    }
    
    func showImage(){
        var image: UIImage = UIImage(named: "mountainImage.jpg")!
        bgImage = UIImageView(image: image)
        bgImage!.frame = CGRect(x: 500,y: 500,width: 100,height: 200)
        bgImage?.backgroundColor = .red
        view.addSubview(bgImage!)
    }
    
//    func showImageView(){
//        imageView.image = UIImage(contentsOfFile: "mountainImage.jpg")
//        imageView.backgroundColor = .red
//
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(imageView)
//        NSLayoutConstraint.activate([
//            imageView.widthAnchor.constraint(equalToConstant: 64),
//            //imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor),
//            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            ])
//
//
////        imageView.frame = CGRect(x: viewWidth / 5, y: viewHeight / 10, width: viewWidth * 3 / 5, height: viewHeight * 2/5)
////        imageView.layer.borderColor = UIColor.black.cgColor
////        imageView.layer.borderWidth = 2
////        imageView.contentMode = .scaleAspectFit
////        view.addSubview(imageView)
//    }
//
//    func cropImage(){
//        let image = UIImage(imageLiteralResourceName: "mountainImage.jpg")
//
//        let rectToCrop = CGRect(x: 10, y: 50, width: 60, height: 800)
//        let croppedImage: UIImage
//
//        let imageView = UIImageView()
//        let factor = imageView.frame.width/image.size.width
//        let rect = CGRect(x: rectToCrop.origin.x / factor, y: rectToCrop.origin.y / factor, width: rectToCrop.width / factor, height: rectToCrop.height / factor)
//        croppedImage = cropImage1(image: image, rect: rect)
//
//        imageView.image = image
//        let originalFrame = imageView.frame
//        let croppedFrame = CGRect(x: originalFrame.origin.x + rectToCrop.origin.x, y: originalFrame.origin.y + rectToCrop.origin.y, width: rectToCrop.width, height: rectToCrop.height)
//
//        self.imageView.image = croppedImage
//        self.imageView.frame = croppedFrame
//    }
//
//    func cropImage1(image: UIImage, rect: CGRect) -> UIImage {
//        let cgImage = image.cgImage!
//        let croppedCGImage = cgImage.cropping(to: rect)
//        return UIImage(cgImage: croppedCGImage!, scale: image.scale, orientation: image.imageOrientation)
//    }
}

