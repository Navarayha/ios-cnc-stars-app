//
//  ViewController.swift
//  CorgiClubApp
//
//  Created by Afir Thes on 02.09.2022.
//  Copyright © 2022 tuist.io. All rights reserved.
//

import UIKit
import Common
import LoginUI
import PeopleUI

public class HomeCoordinator: LoginDelegate {
   
    var loginVC = LoginViewController()
    
    var peopleVC = PeopleViewController()
    
    var authService:AuthService!
    
    public init(authService: AuthService) {
        self.authService = authService
        configureLoginVC()
    }
    
    public func configureLoginVC() -> LoginViewController {
        loginVC.delegate = self
        return loginVC
    }
    
    public func configurePeopleVC() -> PeopleViewController {
        peopleVC.view.backgroundColor = .systemBlue
        return peopleVC
    }
    
    public func login(login: String, password: String) {
        if authService.login(login: login, password: password) {
            let appDelegate = UIApplication.shared.delegate
            guard let window = appDelegate?.window else { return }
            window?.rootViewController = configurePeopleVC()
        } else {
            print("wrong pass")
        }
    }
    
}
