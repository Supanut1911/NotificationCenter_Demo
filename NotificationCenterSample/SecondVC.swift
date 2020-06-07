//
//  SecondVC.swift
//  NotificationCenterSample
//
//  Created by Supanut Laddayam on 7/6/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    let mypet = ["Lucky": 10, "White": 100, "Golden": 72]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func pressButton(_ sender: Any) {
//        NotificationCenter.default.post(name: Notification.Name(NotificationCenterName.Clicked.rawValue), object: nil, petInfo: mypet)
        
        NotificationCenter.default.post(name: Notifications.NotificationCenterName,
                                        object: nil,
                                        userInfo: mypet)
        
        dismiss(animated: true, completion: nil)
    }
    
 
}
