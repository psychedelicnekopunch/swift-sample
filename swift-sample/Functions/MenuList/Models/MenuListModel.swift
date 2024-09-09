
import Foundation


class MenuListModel {
    
    static var sharedInstance: MenuListModel = MenuListModel()
    
    func getList(callback: ([MenuListItems]) -> Void) {
        let list: [MenuListItems] = [
            MenuListItems(title: "UI系", lists: [
                MenuListItem(title: "UIButton", type: .Button)
            ])
        ]
        
        callback(list)
    }
}
