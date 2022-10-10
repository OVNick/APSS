//
//  OrderViewerViewController.swift
//  APSS
//
//  Created by Николай Онучин on 10.10.2022.
//

import UIKit

final class OrderViewerViewController: UIViewController {
    
    ///  Модель сцены "Просмотр заказов".
    private var ordersItemsModel: [OrdersItemsModel] = [
        OrdersItemsModel(orderNumber: "20-01-2292", customer: "Иванов Иван Иванович", inspector: "Онучин Николай Васильевич"),
        OrdersItemsModel(orderNumber: "21-02-0992", customer: "Иванов Иван Иванович", inspector: "Онучин Николай Васильевич"),
        OrdersItemsModel(orderNumber: "22-09-7777", customer: "Иванов Иван Иванович", inspector: "Онучин Николай Васильевич"),
        OrdersItemsModel(orderNumber: "22-10-8888", customer: "Иванов Иван Иванович", inspector: "Онучин Николай Васильевич"),
    ]
    
    /// Номер просматриваемого заказа.
    private let orderNumber = DataManager.identifier
    
    ///  Свойство, обрабатывающее исходящие события.
    var output: OrderViewerViewOutput?
    
    
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        controllerSetting()
        setupSubviews()
        setupConstraints()
    }
    
    
}


// MARK: - OrdersViewInput
extension OrderViewerViewController: OrderViewerViewInput {
    ///  Установить пункты заказов.
    func setOrdersViewerItems(ordersItems: [OrdersItemsModel]) {
        self.ordersItemsModel = ordersItems
    }
}


// MARK: - Private
private extension OrderViewerViewController {
    /// Установка Subview.
    func setupSubviews() {
//        tableView.backgroundColor = .systemGray6
//        tableView.frame = self.view.bounds
//        tableView.rowHeight = UITableView.automaticDimension
//        tableView.separatorStyle = .singleLine
//        tableView.register(OrdersCell.self, forCellReuseIdentifier: cellIdentifire)
//        tableView.showsVerticalScrollIndicator = false
//        tableView.delegate = self
//        tableView.dataSource = self
//        navigationController?.navigationBar.barTintColor = .systemGray6
//        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black,
//                                                                   NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
//        view.addSubview(tableView)
    }
    
    /// Установка констрейнтов.
    func setupConstraints() {
//        NSLayoutConstraint.activate([
//            tableView.topAnchor.constraint(equalTo: view.topAnchor),
//            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
//            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
//            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
//        ])
    }
    
    // Настройка ViewController сцены "Заказы".
    private func controllerSetting() {
        view.backgroundColor = .systemGray6
        title = orderNumber
    }
    
    
}

