
struct MenuListItems {
    
    let title: String
    
    let lists: [MenuListItem]
    
    
    init(title: String, lists: [MenuListItem]) {
        self.title = title
        self.lists = lists
    }
    
}
