import Foundation
import UIKit

final class TableViewModel: NSObject {
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
    let fruits: Fruits

    init(fruits: Fruits) {
        self.fruits = fruits
    }
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
