//
//  SettingsViewController.swift
//  profileApp
//
//  Created by Arslan Abdullaev on 17.12.2021.
//

import UIKit


class SettingsViewController: UIViewController {
    @IBOutlet weak var testLabel: UILabel!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testLabel.text = user
    }
    
    @IBAction func exitToLogin() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "ProfileNavigation")
        self.present(viewController, animated: true, completion: nil)
    }
    
    

}
