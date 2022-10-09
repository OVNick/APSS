//
//  OrdersViewController.swift
//  APSS
//
//  Created by Николай Онучин on 02.10.2022.
//

import UIKit

class OrdersViewController: UIViewController {
    
    private let cellIdentifire = "OrdersCell"
    
    ///  Модель сцены "Заказы".
    private var ordersItemsModel: [OrdersItemsModel] = [
        OrdersItemsModel(orderNumber: "20-01-2292"),
        OrdersItemsModel(orderNumber: "21-02-0992"),
        OrdersItemsModel(orderNumber: "22-09-7777"),
        OrdersItemsModel(orderNumber: "22-10-8888"),
    ]
    
    ///  Свойство, обрабатывающее исходящие события.
    var output: OrdersViewOutput?
    
    /// Таблица для отображения заказов.
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
        setupConstraints()
    }
    
    
}


// MARK: - UITableViewDelegate, UITableViewDataSource

extension OrdersViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ordersItemsModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifire) as? OrdersCell
        else {
            return UITableViewCell()
        }
        
        cell.configureCell(With: ordersItemsModel[indexPath.row])
        
        return cell
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        // Определяем id выбранного пользователя.
//        let userId = friends[indexPath.row].id
//        // Обрабатываем нажатие на ячейку.
//        output?.cellTapAction(userId: userId)
//    }
}


// MARK: - OrdersViewInput
extension OrdersViewController: OrdersViewInput {
    ///  Установить пункты заказов.
    func setOrdersItems(ordersItems: [OrdersItemsModel]) {
        self.ordersItemsModel = ordersItems
    }
}


// MARK: - Private
private extension OrdersViewController {
    /// Установка Subview.
    func setupSubviews() {
        tableView.backgroundColor = .systemGray6
        tableView.frame = self.view.bounds
        tableView.rowHeight = UITableView.automaticDimension
        tableView.separatorStyle = .singleLine
        tableView.register(OrdersCell.self, forCellReuseIdentifier: cellIdentifire)
        tableView.showsVerticalScrollIndicator = false
        tableView.delegate = self
        tableView.dataSource = self
        navigationController?.navigationBar.barTintColor = .systemGray6
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black,
                                                                   NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        view.addSubview(tableView)
    }
    
    /// Установка констрейнтов.
    func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    
}
