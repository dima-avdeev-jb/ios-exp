import UIKit
import shared

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let uiViewController = UIViewController()
        uiViewController.view = {
            let rootView = UIView()

            let uiSwitch = UISwitch(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            let sub = uiSwitch.subviews[0]
            let recognizers: [UIGestureRecognizer]? = sub.gestureRecognizers
            let recognizer = recognizers?.first ?? UIGestureRecognizer()
//            sub.removeGestureRecognizer(recognizer)

            let mySwitch: UIControl = uiSwitch as UIControl
            let uiText = CustomText(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
            uiText.backgroundColor = UIColor.gray
            uiText.text = "UITextField"
            rootView.addSubview(uiText)
            rootView.addSubview(mySwitch)

            rootView.addSubview(DelegateView(recognizer, CGRect(x: 0, y: 0, width: 200, height: 100)))
            return rootView
        }()
        window?.rootViewController = uiViewController
        window?.makeKeyAndVisible()
        return true
    }
}

