import Foundation

class TableViewModel:TVDataSourceConfigurable {

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
    typealias T = Fruit
    var array: [Fruit] {
        return fruits.fruits
    }

    init(fruits: Fruits) {
        self.fruits = fruits
    }
}
