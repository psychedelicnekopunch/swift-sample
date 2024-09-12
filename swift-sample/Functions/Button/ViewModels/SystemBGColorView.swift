
import UIKit

class SystemBGColorView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.backgroundColor = .systemBackground
    }

}
