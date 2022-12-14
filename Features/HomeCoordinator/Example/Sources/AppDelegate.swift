import UIKit
import HomeCoordinator
import MockAuthService

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var homeCoordinator = HomeCoordinator(authService: MockAuthService.instance)

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = homeCoordinator.configureLoginVC()
        window?.makeKeyAndVisible()

        return true
    }

}
