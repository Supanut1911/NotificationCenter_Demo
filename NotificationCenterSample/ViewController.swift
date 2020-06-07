//
//  ViewController.swift
//  NotificationCenterSample
//
//  Created by Supanut Laddayam on 7/6/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

enum NotificationCenterName: String {
    case Clicked
}

class ViewController: UIViewController {

    static var random: UIColor {
        let r:CGFloat  = .random(in: 0...1)
        let g:CGFloat  = .random(in: 0...1)
        let b:CGFloat  = .random(in: 0...1)
        return UIColor(red: r, green: g, blue: b, alpha: 1)
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNotiCenter()
        print("Hello")
    }

    func setUpNotiCenter() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(recivedNotificationCenter),
                                               name: Notifications.NotificationCenterName,
                                               object: nil)
        
    }
    
    @objc func recivedNotificationCenter(notification: Notification) {
        
        if let data = notification.userInfo as? [String: Int] {
            for (name, score) in data {
                print(name, score)
                titleLabel.text = "\(name) \(score)"
            }
        }

//        titleLabel.text = "Did Receive "
        view.backgroundColor = ViewController.random
    }
    

}

