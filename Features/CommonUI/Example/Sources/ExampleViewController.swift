//
//  ExampleViewController.swift
//  CommonUI
//
//  Created by Afir Thes on 04.09.2022.
//  Copyright © 2022 Sonomos.com. All rights reserved.
//

import UIKit
import CommonUI

public class ExampleViewController: UIViewController {
    
    var textField:CNCTextField = CNCTextField(placeholder: "Login")
    var button:CNCButton = CNCButton(backgroundColor: .systemBlue, title: "Login")
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureTextField()
        configureButton()
    }
    
    func configureTextField() {
        view.addSubview(textField)
        textField.delegate = self
        
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            textField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func configureButton() {
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 12),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func buttonAction() {
        print("Button pressed")
    }

}

extension ExampleViewController: UITextFieldDelegate {
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        return true
    }
}
