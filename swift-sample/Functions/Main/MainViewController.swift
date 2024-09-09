
import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        print("ViewController")
//        ここで画面遷移する関数を呼ぶと描画？がまだ終わってないのに
//        違う画面に遷移しようとするので挙動がおかしくなる。
//        viewDidAppear() で呼ぶ
//        self.gotoMenuList()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.gotoMenuList()
    }
    
    func initButton() {
        self.gotoMenuList()
    }

    func gotoMenuList() {
        print("gotoMenuList")
        let storyboard: UIStoryboard = UIStoryboard(name: "MenuList", bundle: nil)
        let vc: MenuListViewController = storyboard.instantiateViewController(withIdentifier: "MenuList") as! MenuListViewController
//        vc.modalPresentationStyle = .fullScreen
        let nav: UINavigationController = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        self.present(nav, animated: false)
    }
}

