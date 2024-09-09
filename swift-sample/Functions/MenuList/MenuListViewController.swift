
import UIKit

class MenuListViewController: UIViewController {
    
    
    @IBOutlet weak var menuListTableView: MenuListTableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("MenuListViewController")
        self.view.layer.backgroundColor = UIColor(red: 0.2, green: 0.7, blue: 0.7, alpha: 1.0).cgColor
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.initTableView()
    }
    
    
    private func initTableView() {
        self.menuListTableView.initList()
        self.menuListTableView.didSelectRowAt = { cell, tableView, indexPath in
            print(cell.itemType)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
