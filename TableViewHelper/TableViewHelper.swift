import Foundation
import UIKit

/*
 A -> TVDataSourceConfigurable(Basic TableView.DataSource protocol goes to here)
 B -> UITableViewCell or Custom TableViewCell
 C -> T String or Model or whatEver (ie.[T]-> What is about T?)
 */
final class TableViewHelper<A: TVDataSourceConfigurable, B, C>: NSObject, UITableViewDataSource where B: UITableViewCell {
    private let source: A
    private let configureCell: CellConfiguration
    typealias CellConfiguration = (B, C) -> B

    init(source: A, configureCell: @escaping CellConfiguration) {
        self.source = source
        self.configureCell = configureCell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return source.numberOfRows(in: section)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: B = tableView.dequeueReusableCell(forIndexPath: indexPath)
        if let model = source.cellForRow(at: indexPath) as? C {
            return configureCell(cell,model)
        }
        return cell
    }
   
}



