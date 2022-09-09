import UIKit
import LoginUI
import Common

@main

class AppDelegate: UIResponder, UIApplicationDelegate, UIWindowSceneDelegate, LoginDelegate {
    
    var window: UIWindow?
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        
        let loginVC = LoginViewController()
        loginVC.delegate = self
        let navVC = UINavigationController(rootViewController: loginVC)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navVC
        window?.makeKeyAndVisible()
        
        return true
    }
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window?.windowScene = windowScene
        window?.makeKeyAndVisible()
        let loginViewController = LoginViewController()
        let navController = UINavigationController(rootViewController: loginViewController)
        window?.rootViewController = navController
        
    }

    func login(login: String, password: String) {
        print("Logged in...")
    }
    
}
