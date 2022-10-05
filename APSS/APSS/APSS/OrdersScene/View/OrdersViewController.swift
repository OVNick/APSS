//
//  OrdersViewController.swift
//  APSS
//
//  Created by Николай Онучин on 02.10.2022.
//

import UIKit

class OrdersViewController: UIViewController {

    ///  Модель сцены "Заказы".
    private var ordersItemsModel = OrdersItemsModel()
    
    ///  Свойство, обрабатывающее исходящие события.
    var output: OrdersViewOutput?
    
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        setupSubviews()
        setupConstraints()
    }


}


// MARK: - OrdersViewInput
extension OrdersViewController: OrdersViewInput {
    ///  Установить пункты заказов.
    func setOrdersItems(ordersItems: OrdersItemsModel) {
        self.ordersItemsModel = ordersItems
        
    }
}


// MARK: - Private
private extension OrdersViewController {
    /// Установка Subview.
    func setupSubviews() {
 
    }
    
    /// Установка констрейнтов.
    func setupConstraints() {
        
    }
    
    
}
