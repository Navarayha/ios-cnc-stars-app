//
//  AuthService.swift
//  AuthService
//
//  Created by Afir Thes on 02.09.2022.
//  Copyright © 2022 Sonomos.com. All rights reserved.
//

import Foundation
import Common

public class MockAuthService: AuthService {

    public static var instance = MockAuthService()
    
    private init() {
        registeredUsers["user"] = "password"
    }
    
    private var loggedIn = false
    
    private var registeredUsers: [String:String] = [:]
    
    public func login(login: String, password: String) -> Bool {
        if let p = registeredUsers[login], p == password {
            loggedIn = true
            return true
        }
        return false
    }
    
    public func register(login: String, password: String) -> Bool {
        registeredUsers[login]=password
        return true
    }
    
    public func isLoggedIn() -> Bool {
        return loggedIn
    }
    
    public func logout() {
        loggedIn = false
    }
    
}
