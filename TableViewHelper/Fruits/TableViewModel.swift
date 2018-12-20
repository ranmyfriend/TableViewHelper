import Foundation
import UIKit

struct TableViewModel {
    let fruits: Fruits
}

//MARK: - TableViewDataSource methods
extension TableViewModel: TVDataSourceConfigurable {
    typealias T = Fruit
    var array: [Fruit] {
        return fruits.fruits
    }
}

extension TableViewModel: TVDelegateConfigurable {
    func didSelectRow(at indexPath: IndexPath) {
        let fruit = fruits.fruits[indexPath.row]
        print("you have clicked: \(fruit.name)")
    }
}
