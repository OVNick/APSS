//
//  OrdersCell.swift
//  APSS
//
//  Created by Николай Онучин on 09.10.2022.
//

import UIKit

/// Ячейка таблицы заказов.
final class OrdersCell: UITableViewCell {
    /// Фон ячейки таблицы заказов.
    private lazy var backgroundCell: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray6
        //view.layer.cornerRadius = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    /// Номер заказа.
    private lazy var orderNumber: UILabel = {
        let label = UILabel()
        
        //label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    /// Инициализатор ячейки.
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        contentView.backgroundColor = .systemGray6
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /// Конфигуратор ячейки.
    func configureCell(With model: OrdersItemsModel) {
        orderNumber.text = model.orderNumber
    }
}

// MARK: - Private
private extension OrdersCell {
    func setupSubviews() {
        contentView.addSubview(backgroundCell)
        backgroundCell.addSubview(orderNumber)
        
        NSLayoutConstraint.activate([
            backgroundCell.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            backgroundCell.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 0),
            backgroundCell.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 0),
            backgroundCell.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
            backgroundCell.heightAnchor.constraint(greaterThanOrEqualToConstant: 64),
            
            orderNumber.centerYAnchor.constraint(equalTo: backgroundCell.centerYAnchor),
            orderNumber.leftAnchor.constraint(equalTo: backgroundCell.leftAnchor, constant: 16),
            orderNumber.heightAnchor.constraint(equalToConstant: 18),
            orderNumber.widthAnchor.constraint(greaterThanOrEqualToConstant: 64),
        ])
    }
}
