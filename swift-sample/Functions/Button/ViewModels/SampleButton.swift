
import UIKit

class SampleButton: UIButton {
    
//    let touchDown: (() -> Void)?

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
    }
    
    
    func initStyle() {
//        self.attributedTitle(for: .disabled)
        self.setTitle("ボタン", for: .normal)
        self.setTitle("フォーカス", for: .focused)
        self.setTitle("タップ", for: .highlighted)
    }
    
}
