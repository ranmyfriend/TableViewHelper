import Foundation
import UIKit

class TableViewCell: UITableViewCell {}

extension TableViewCell {
    func configureCell(model: Fruit) {
        self.textLabel?.text = model.name
    }
}
