//
//  LogInViewController.swift
//  profileApp
//
//  Created by Arslan Abdullaev on 16.12.2021.
//

import UIKit

class LogInViewController: UIViewController {
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotButton: UIButton!
    
    private var person = Person()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navContorller = segue.destination as? UINavigationController else { return }
        guard let profile = navContorller.topViewController as? ProfileViewController else { return }
        profile.nameOfUser = person.getName()
    }
    
    @IBAction func checkButtonPressed() {
       
        if nameTF.text != person.getName() || passwordTF.text != person.getPassword() {
            showAlert(title: "Вход невозможен",
                      message: "Проверьте правильность ввода логина или пароля",
                      textField: passwordTF
                    )
            }
    }
    
    @IBAction func forgotButtonPressed() {
        showAlert(title: "Ваш Логин и Пароль",
                  message: "Логин: Human, Пароль: qwerty",
                  textField: nil)
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        nameTF.text = ""
        passwordTF.text = ""
    }
    
}
// MARK: - Private methods
extension LogInViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension LogInViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTF {
            passwordTF.becomeFirstResponder()
        } else {
            checkButtonPressed()
            performSegue(withIdentifier: "segueToProfile", sender: nil)
        }
        return true
    }
}
