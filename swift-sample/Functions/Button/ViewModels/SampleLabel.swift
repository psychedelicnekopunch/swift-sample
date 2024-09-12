
import UIKit

class SampleLabel: UILabel {

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
        self.text = "0"
    }
    
    
    func countUp() {
        guard let str: String = self.text else {
            print("ERROR: in SampleLabel")
            return
        }
        guard var cnt: Int = Int.init(str) else {
            print("ERROR: in SampleLabel")
            return
        }
        cnt += 1
        self.text = "\(cnt)"
    }

}
