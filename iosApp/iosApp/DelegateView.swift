import UIKit
import Foundation

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

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        target.callSubviewsRecursive { view in
            view.touchesBegan(touches, with: event)
            (view.gestureRecognizers ?? []).forEach { recognizer in
                if let event {
                    recognizer.touchesBegan(touches, with: event)
                }
            }
        }
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        target.callSubviewsRecursive { view in
            view.touchesBegan(touches, with: event)
            (view.gestureRecognizers ?? []).forEach { recognizer in
                if let event {
                    recognizer.touchesMoved(touches, with: event)
                }
            }
        }
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        target.callSubviewsRecursive { view in
            view.touchesBegan(touches, with: event)
            (view.gestureRecognizers ?? []).forEach { recognizer in
                if let event {
                    recognizer.touchesEnded(touches, with: event)
                }
            }
        }
    }

    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        target.callSubviewsRecursive { view in
            view.touchesBegan(touches, with: event)
            (view.gestureRecognizers ?? []).forEach { recognizer in
                if let event {
                    recognizer.touchesCancelled(touches, with: event)
                }
            }
        }
    }

}

extension UIView {
    func callSubviewsRecursive(call: (UIView) -> Void) {
        call(self)
        self.subviews.forEach { view in
            view.callSubviewsRecursive(call: call)
        }
    }
}
