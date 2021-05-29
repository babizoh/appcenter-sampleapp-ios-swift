
import UIKit
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes
import AppCenterPush

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        AppCenter.start(withAppSecret: "0d5c9582-3c12-42c9-bd74-b6c766fa304e", services:[
            Analytics.self,
            Crashes.self
        ])

        return true
    }
    
    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Enabled App Center SDK verbose logs
        MSAppCenter.setLogLevel(.verbose)
        
        MSAppCenter.start("<APP SECRET HERE>", withServices: [
            MSAnalytics.self,
            MSCrashes.self,
            MSPush.self,
        ])
        
        return true
    }
}
