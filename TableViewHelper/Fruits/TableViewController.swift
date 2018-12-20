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
            cell.configureCell(model: model)
            return cell
        }
        tableView.dataSource = tableDataSource
        tableView.delegate = tableDataSource
        tableView.reloadData()
    }
}


//(i)Simply we are populating the TableView with Strings
//    var array: [String] = ["Apple","Orange","Pineapple","Grapes","Gova"]
//    typealias T = String

////(ii)Populating the Model Data in TableView
//typealias T = Fruit
//    var array: [Fruit] = [
//        Fruit(name: "Apple"),
//        Fruit(name: "Orange"),
//        Fruit(name: "Pineapple"),
//        Fruit(name: "Grapes"),
//        Fruit(name: "Gova")]

//(iii)Here we have Fruits Model and it has one array and it contains list of fruits and we are populating this on TableView
