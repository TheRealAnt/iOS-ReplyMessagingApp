//
//  TableViewController.swift
//  SideMenuTutorial
//
//  Created by Antonie on 2019/11/14.
//  Copyright © 2019 Stephan Dowless. All rights reserved.
//

import UIKit
class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Properties
    
    private let myArray: NSArray = ["https//:www.google.com","Hi there check www.google.com","Third"]
    private var myTableView: UITableView!
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    // MARK: - Selectors
    
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Helper Functions
    
    func configureUI() {
        view.backgroundColor = .white
        
        setupTableView()
        setupNavbar()
    }
    
    //MARK: - setupNavbar
    
    func setupNavbar(){
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "TableView"
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_clear_white_36pt_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
    }
    
    //MARK: - setupTableView
    
    func setupTableView(){
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        myTableView = UITableView(frame: CGRect(x: 0, y: 100, width: displayWidth, height: displayHeight - barHeight))
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        myTableView.dataSource = self
        myTableView.delegate = self
        self.view.addSubview(myTableView)
        
//        if((chatMessageLabel.attributedText) != nil){
//            print(chatMessageLabel.attributedText!)
//        }
//        chatMessageLabel.text = myArray[2] as! String
//        //print(chatMessageLabel.enabledDetectors)
        
//        if (chatMessageLabel.enabledDetectors[DetectorType.url]) {
//            print("I am a url")
//        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.isUserInteractionEnabled = true
        print("Num: \(indexPath.row)")
        print("Value: \(myArray[indexPath.row])")
        
        let input = myArray[indexPath.row] as! String
        let detector = try! NSDataDetector(types: NSTextCheckingResult.CheckingType.link.rawValue)
        let matches = detector.matches(in: input, options: [], range: NSRange(location: 0, length: input.utf16.count))

        for match in matches {
            guard let range = Range(match.range, in: input) else { continue }
            let url = input[range]
            print(url)

            if let theUrl = URL(string: String("https://\(url)")) {
                UIApplication.shared.open(theUrl)
        }
    }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
        cell.textLabel!.text = "\(myArray[indexPath.row])"
        
        let myString = cell.textLabel!.text
  
        let detector = try? NSDataDetector(types: NSTextCheckingResult.CheckingType.link.rawValue)
        let matches = detector!.matches(in: myString!, options: [], range: NSMakeRange(0, myString!.count))

        
        
        print(matches)
        
//        if chatMessageLabel.text!.contains("http") || chatMessageLabel.text!.contains("https")
//        {
//            print(chatMessageLabel.urlAttributes)
//
//        }
//            print("Link")
//            chatMessageLabel.text = myArray[0] as? String
//            print(chatMessageLabel.text)
//            print(chatMessageLabel.urlAttributes[.link])
//        }
//        else{
//            print("Text")
//        }
//        chatMessageLabel.text = myArray[indexPath.row] as? String
//
//        print(chatMessageLabel.text!)
//        print(chatMessageLabel[DetectorType.url])
//
//        if (chatMessageLabel.enabledDetectors[DetectorType.url]) {
//            print("I am a url")
//        }
        return cell
    }
    
}
