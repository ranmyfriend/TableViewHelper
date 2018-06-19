import Foundation
import UIKit

class TableViewController: UITableViewController {

    private var tableDataSource: TableViewHelper<TableViewModel,TableViewCell,Fruit>?

    override func viewDidLoad() {
        title = "Basic TableView"
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.reuseIdentifier)
        let mock = [Fruit(name: "Apple"),
                    Fruit(name: "Orange"),
                    Fruit(name: "Pineapple"),
                    Fruit(name: "Grapes"),
                    Fruit(name: "Gova")]
        let viewModel = TableViewModel(fruits:Fruits(fruits: mock))
        tableDataSource = TableViewHelper(source: viewModel) {cell,model in
            cell.configureCell(model: model)
            return cell
        }
        tableView.dataSource = tableDataSource
        tableView.reloadData()
        super.viewDidLoad()
    }

}
