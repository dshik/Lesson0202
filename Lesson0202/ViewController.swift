//
//  ViewController.swift
//  Lesson0202
//
//  Created by Дмитрий Шикунов on 22.08.2020.
//  Copyright © 2020 Дмитрий Шикунов. All rights reserved.
//

import UIKit

class ViewController:
    UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
        
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
}


