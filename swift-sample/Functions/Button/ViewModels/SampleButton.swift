
import UIKit

class SampleButton: UIButton {
    
    var touchDown: (() -> Void)?

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
        self.addAction(.init(handler: { uiAction in
            self.touchDown!()
        }), for: .touchDown)
    }
    
}
