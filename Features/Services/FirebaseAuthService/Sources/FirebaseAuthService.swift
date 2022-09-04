//
//  AuthService.swift
//  AuthService
//
//  Created by Afir Thes on 02.09.2022.
//
//

import Foundation
import Common

public class FirebaseAuthService: AuthService {
    public func logout() {
        
    }
    
    public func register(login: String, password: String) -> Bool {
        return true
    }
    
    public func isLoggedIn() -> Bool {
        return true
    }
    

    public static var instance = FirebaseAuthService()
    
    public func login(login: String, password: String) -> Bool {
        print("you are loggedin")
        return true
    }
    
    public func isLoginned() -> Bool {
        print("yes you are!")
        return true
    }
    
    private init() { }
    
    
}
