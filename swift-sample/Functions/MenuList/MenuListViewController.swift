
import UIKit

class MenuListViewController: UIViewController {
    
    
    @IBOutlet weak var menuListTableView: MenuListTableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("MenuListViewController")
        
        self.view.layer.backgroundColor = UIColor.cyan.cgColor
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.initTableView()
    }
    
    
    private func initTableView() {
        self.menuListTableView.initList()
        self.menuListTableView.didSelectRowAt = { cell, tableView, indexPath in
            self.gotoNextPage(itemType: cell.itemType)
        }
    }
    
    
    private func gotoNextPage(itemType: MenuListItem.ItemType) {
        switch itemType {
        case .Button:
            let storyboard: UIStoryboard = UIStoryboard.init(name: "Button", bundle: nil)
            let vc: ButtonViewController = storyboard.instantiateViewController(withIdentifier: "Button") as! ButtonViewController
            self.navigationController?.pushViewController(vc, animated: true)
            break
        case .Error:
            print("ERROR")
            break
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
