
struct MenuListItem {
    
    enum ItemType {
        case Button
        case Error
    }
    
    let title: String
    
    let type: ItemType
    
    
    init(title: String, type: ItemType) {
        self.title = title
        self.type = type
    }

}
