//
//  ViewController.swift
//  Lesson0202
//
//  Created by Дмитрий Шикунов on 22.08.2020.
//  Copyright © 2020 Дмитрий Шикунов. All rights reserved.
//

import UIKit

class LoginViewController:
    UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var pwdTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
    }

    @objc
    func keyboardWillShow(notification: Notification) {
        guard let keyboardRect = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {return}
        
        scrollView.contentInset.bottom = keyboardRect.height
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return true
        if loginTextField.text == "admin", pwdTextField.text == "123" {
            return true
        }
        
        let alert = UIAlertController(title: "Ошибка", message: "Неверный логин или пароль", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(action)
        present(alert, animated: true)
        
        return false
        
    }

}


