//
//  UserInfo.swift
//  profileApp
//
//  Created by Arslan Abdullaev on 17.12.2021.
//

import Foundation

struct Person {
    let userName = "Human"
    let userPassword = "qwerty"
    
    public func getName() -> String {
        userName
    }
    public func getPassword() -> String {
        userPassword
    }
}
