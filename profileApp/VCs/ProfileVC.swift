//
//  ViewController.swift
//  profileApp
//
//  Created by Arslan Abdullaev on 16.12.2021.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet weak var titleName: UINavigationItem!
    
    private var person = Person()
    
    var nameOfUser = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageProfile.layer.borderWidth = 3.0
        imageProfile.layer.borderColor = UIColor.lightGray.cgColor
        titleName.title = nameOfUser
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let tabController = segue.destination as? UITabBarController
        {
                tabController.viewControllers?.forEach {
                    if let nav = $0 as? UINavigationController {
                        let settings = nav.topViewController as! SettingsViewController
                        settings.user = person.getName()
                    }
                }
            }
        }
}
