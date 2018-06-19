import Foundation
import UIKit

final class TableViewController: UITableViewController {

    private var tableDataSource: TableViewHelper<TableViewModel,TableViewCell,Fruit>?

    private var mockData: [Fruit] {
        return [Fruit(name: "Apple"),
                Fruit(name: "Orange"),
                Fruit(name: "Pineapple"),
                Fruit(name: "Grapes"),
                Fruit(name: "Gova")]
    }

    override func viewDidLoad() {
        title = "Basic TableView"
        setupTableView()
        super.viewDidLoad()
    }

    private func setupTableView() {
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.reuseIdentifier)
        let viewModel = TableViewModel(fruits:Fruits(fruits: mockData))
        tableDataSource = TableViewHelper(source: viewModel) {cell,model in
            cell.selectionStyle = .none
            cell.configureCell(model: model)
            return cell
        }
        tableView.dataSource = tableDataSource
        tableView.delegate = viewModel
        tableView.reloadData()
    }
}
