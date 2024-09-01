//
//  MainViewController.swift
//  swift-sample
//


import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        print("ViewController")
        self.initButton()
    }
    
    func initButton() {
        self.gotoMenuList()
    }

    func gotoMenuList() {
        print("gotoMenuList")
        let storyboard: UIStoryboard = UIStoryboard(name: "MenuList", bundle: nil)
        let vc: MenuListViewController = storyboard.instantiateViewController(withIdentifier: "MenuList") as! MenuListViewController
        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated: false)
        self.present(vc, animated: false) {
            print("callback")
        }
    }
}

