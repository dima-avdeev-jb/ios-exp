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

            let uiText = UITextField(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
            uiText.backgroundColor = UIColor.gray
            uiText.text = "UITextField"
            rootView.addSubview(uiText)
            rootView.addSubview(DelegateView(uiText, CGRect(x: 0, y: 0, width: 200, height: 100)))
            return rootView
        }()
        window?.rootViewController = uiViewController
        window?.makeKeyAndVisible()
        return true
    }
}

class DelegateView: UIView {

    var target: UIView

    init(_ target: UIView, _ frame: CGRect) {
        self.target = target
        super.init(frame: frame)
        self.backgroundColor = UIColor.yellow.withAlphaComponent(0.2)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
