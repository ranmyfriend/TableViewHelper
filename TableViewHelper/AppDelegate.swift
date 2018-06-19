import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    lazy var window: UIWindow? = {
        let w = UIWindow.init(frame: UIScreen.main.bounds)
        w.makeKeyAndVisible()
        return w
    }()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let nc = UINavigationController()
        nc.viewControllers = [TableViewController()]
        window?.rootViewController = nc
        return true
    }

}

