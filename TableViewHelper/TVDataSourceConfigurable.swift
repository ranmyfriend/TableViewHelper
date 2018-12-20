import Foundation
import UIKit

protocol Base {
    associatedtype T
    //MARK: T->What type of data you are hold it in Array ie.[T]
    //MARK: This getter will get the value from end user (ie.ViewModel)
    //High level collection. Its like finally whatever the computation you have done, final list are ready lets give this to computed property
    var array: [T] {get}
}

//MARK: Basic TableView datasource methods
protocol TVDataSourceConfigurable:Base {

    func numberOfSections() -> Int
    func numberOfRows(in section: Int) -> Int
    func cellForRow(at indexPath: IndexPath) -> T?
}

extension TVDataSourceConfigurable {
    func numberOfSections() -> Int {
        return 1
    }
    func numberOfRows(in section: Int) -> Int {
        return array.count
    }
    func cellForRow(at indexPath: IndexPath) -> T? {
        return array[indexPath.row]
    }

}

protocol TVDelegateConfigurable:Base {

    func didSelectRow(at indexPath: IndexPath)
    func titleForHeader(in section: Int) -> String?
}

extension TVDelegateConfigurable {

    func didSelectRow(at indexPath: IndexPath) {}

    func titleForHeader(in section: Int) -> String? {
        return nil
    }
}
