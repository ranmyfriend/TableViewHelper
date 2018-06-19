import Foundation
import UIKit

final class TableViewCell: UITableViewCell {}

extension TableViewCell {
    func configureCell(model: Fruit) {
        self.textLabel?.text = model.name
    }
}
