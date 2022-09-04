//
//  AuthService.swift
//  Common
//
//  Created by Afir Thes on 02.09.2022.
//

import Foundation

public protocol AuthService {
    func login(login: String, password: String) -> Bool
    func logout()
    func register(login: String, password: String) -> Bool
    func isLoggedIn() -> Bool
}
