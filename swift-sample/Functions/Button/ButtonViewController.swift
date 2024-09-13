
import UIKit

class ButtonViewController: UIViewController {
    
    
    @IBOutlet weak var sampleLabel: SampleLabel!
    
    @IBOutlet weak var sampleButton: SampleButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        print("ButtonViewController")
        self.initButton()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    

    private func initButton() {
        self.sampleButton.touchUpInside = {
            self.sampleLabel.countUp()
        }
        self.sampleButton.longPress = {
            self.showAlert()
        }
    }
    
    
    private func showAlert() {
        let alert: UIAlertController = UIAlertController(title: "アラート", message: "長押しです", preferredStyle: .alert)
        let action: UIAlertAction = UIAlertAction(title: "OK", style: .default) { uiAction in
            print("default")
        }
        alert.addAction(action)
        self.present(alert, animated: true)
    }

}
