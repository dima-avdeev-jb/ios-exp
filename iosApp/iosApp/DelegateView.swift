import UIKit
import Foundation

class DelegateView: UIView {

    var target: UIGestureRecognizer

    init(_ target: UIGestureRecognizer, _ frame: CGRect) {
        self.target = target
        super.init(frame: frame)
        self.backgroundColor = UIColor.yellow.withAlphaComponent(0.2)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let e = event else {
            return
        }
        target.touchesBegan(touches, with: e)
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let e = event else {
            return
        }
        target.touchesMoved(touches, with: e)
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let e = event else {
            return
        }
        target.touchesEnded(touches, with: e)
    }

    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let e = event else {
            return
        }
        target.touchesCancelled(touches, with: e)
    }


}
