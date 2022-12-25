import Foundation
import UIKit


class CustomText: UITextField {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super.touchesBegan(touches, with: event)
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super.touchesMoved(touches, with: event)
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super.touchesEnded(touches, with: event)
    }

    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super.touchesCancelled(touches, with: event)
    }

    override var inputView: UIView? {
        get {
            return nil
        }
        set {
        }
    }
    override var textInputView: UIView {
        return UIView()
    }
    override var inputAccessoryView: UIView? {
        get {
            nil
        }
        set {
        }
    }
    override var subviews: [UIView] {
        []
    }

}
