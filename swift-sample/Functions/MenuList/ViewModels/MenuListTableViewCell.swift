
import UIKit

class MenuListTableViewCell: UITableViewCell {
    
    
    private (set) var _itemType: MenuListItem.ItemType?
    
    
    var itemType: MenuListItem.ItemType {
        get {
            guard let itemType: MenuListItem.ItemType = _itemType else {
                return .Error
            }
            return itemType
        }
    }

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setCell(menuListItem: MenuListItem) {
        self.textLabel?.text = menuListItem.title
        self._itemType = menuListItem.type
//        print(menuListItem)
    }

}
