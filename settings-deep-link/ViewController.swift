//
//  ViewController.swift
//  settings-deep-link
//
//  Created by Code Pro on 2/4/18.
//  Copyright © 2018 Code Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func settingsTapped(_ sender: Any) {
     
        openAppSettings()
    }
    
    func openAppSettings() {
        if let appSettings = NSURL(string: UIApplicationOpenSettingsURLString) {
            UIApplication.shared.open(appSettings as URL, options: [:], completionHandler: { (success) in
                print("Completion handler called with status: \(success)")
            })
        }
    }
}

