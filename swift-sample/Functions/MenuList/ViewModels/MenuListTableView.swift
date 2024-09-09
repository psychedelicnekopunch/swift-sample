
import UIKit

class MenuListTableView: UITableView, UITableViewDataSource, UITableViewDelegate {
    
    private var lists: [MenuListItems] = [MenuListItems]() {
        didSet {
            self.reloadData()
        }
    }
    
    var didSelectRowAt: ((_ cell: MenuListTableViewCell, _ tableView: UITableView, _ indexPath: IndexPath) -> Void)?

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.dataSource = self
        self.delegate = self
    }
    
    
    func initList() {
        MenuListModel.sharedInstance.getList(callback: { menuListItems in
            self.lists = menuListItems
        })
    }
    
    
    // MARK: - UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.lists.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.lists[section].lists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print("call cell")
        
        let menuListItem: MenuListItem = self.lists[indexPath.section].lists[indexPath.row]
        
        // Storyboard 内の TableViewCell の設定にある Identifier に
        // "MenuListTableViewCell" を入力する必要がある
        //
        // ID が見つからなければ、
        // Fatal errer: Unexpectedly found nil while unwrapping an Optional value
        // というエラーがでる。
        guard let cell: MenuListTableViewCell = tableView.dequeueReusableCell(withIdentifier: "MenuListTableViewCell") as? MenuListTableViewCell else {
            let cell: UITableViewCell = UITableViewCell()
            cell.textLabel?.text = menuListItem.title
            return cell
        }
        
        cell.setCell(menuListItem: menuListItem)
        
        return cell
    }
    
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell: MenuListTableViewCell = tableView.cellForRow(at: indexPath) as! MenuListTableViewCell
        self.didSelectRowAt?(cell, tableView, indexPath)
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return (section == self.lists.count - 1) ? 50 : 1
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.backgroundColor = .white
        
        let label: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        label.font = UIFont.systemFont(ofSize: 14)
        label.frame.origin = CGPoint(x: 20, y: 0)
        label.text = self.lists[section].title
        view.addSubview(label)
        return view
    }
}
