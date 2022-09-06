import UIKit
import Common
import Alamofire
import FirebaseCore

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {


        AF.request("https://dummyjson.com/products/1").response { response in
            debugPrint(response)
        }
        
        FirebaseApp.configure()
        
        return true
    }

}
