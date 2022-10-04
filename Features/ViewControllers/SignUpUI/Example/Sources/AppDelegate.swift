import UIKit
import LoginUI
import Common

@main
class AppDelegate: UIResponder, UIApplicationDelegate, LoginDelegate {
    
    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        
        let loginVC = LoginViewController()
        loginVC.delegate = self
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = loginVC
        window?.makeKeyAndVisible()

        return true
    }
    
    func login(login: String, password: String) {
        print("Logged in...")
    }

}
