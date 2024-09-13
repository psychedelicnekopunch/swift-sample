
import UIKit

class SampleButton: UIButton {
    
    var touchDown: (() -> Void)?
    
    var touchUpInside: (() -> Void)?
    
    var longPress: (() -> Void)?
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    

    required init?(coder: NSCoder) {
        super.init(coder: coder)
//        fatalError("init(coder:) has not been implemented")
        self.initStyle()
        self.initAction()
    }
    
    
    private func initStyle() {
        self.setTitle("ボタン", for: .normal)
        self.setTitle("タップ", for: .highlighted)
    }
    
    
    private func initAction() {
        
        // 通常タップ
        self.addAction(.init(handler: { uiAction in
            print("touchDown")
            guard let touchDown = self.touchDown else {
                return
            }
            touchDown()
        }), for: .touchDown)
        
        
        // タップしてボタン上で離すと呼ばれる
        self.addAction(.init(handler: { uiAction in
            print("touchUpInside")
            guard let touchUpInside = self.touchUpInside else {
                return
            }
            touchUpInside()
        }), for: .touchUpInside)
        
        
        self.addAction(.init(handler: { uiAction in
            print("touchUpOutside")
        }), for: .touchUpOutside)
        
        
        // タップしながら指をボタン外に移動させる
        self.addAction(.init(handler: { uiAction in
            print("touchDragExit")
        }), for: .touchDragExit)
        
        
        // 長押し
        let longPressGesture: UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(didLongPress))
        self.addGestureRecognizer(longPressGesture)
        
        // タップ感知
//        let tapGesture: UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(didTap))
//        // 長押し判定を0秒にする
//        tapGesture.minimumPressDuration = 0
//        self.addGestureRecognizer(tapGesture)
    }
    
    
    @objc func didLongPress(gesture: UILongPressGestureRecognizer) {
        guard let longPress = self.longPress else {
            return
        }
        // 長押しが検知された時
        if gesture.state == .began {
            print("longPress")
            longPress()
        }
    }
    
    
//    @objc func didTap(gesture: UITapGestureRecognizer) {
//        switch gesture.state {
//        case .began:
//            break
//        case .possible:
//            break
//        case .changed:
//            break
//        case .ended:
//            break
//        case .cancelled:
//            break
//        case .failed:
//            break
//        @unknown default:
//            break
//        }
//    }
    
}
