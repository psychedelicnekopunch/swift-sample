
import UIKit

class DisableButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.initStyle()
    }
    
    
    private func initStyle() {
        self.setTitle("無効", for: .disabled)
        self.isEnabled = false
    }

}
