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
    
    var nameOfUser = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageProfile.layer.borderWidth = 3.0
        imageProfile.layer.borderColor = UIColor.lightGray.cgColor
        titleName.title = nameOfUser
    }

}
