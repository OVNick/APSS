//
//  MenuViewController.swift
//  APSS
//
//  Created by Николай Онучин on 02.10.2022.
//

import UIKit

class MenuViewController: UIViewController {
    
    ///  Модель сцены "Меню".
    private var menuItemsModel = MenuItemsModel()
    
    ///  Свойство, обрабатывающее исходящие события.
    var output: MenuViewOutput?
    
    /// Кнопка "Заказы".
    private lazy var ordersButton: UIButton = {
        let button = UIButton()
        
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 8
        button.setTitle("Заказы", for: .normal)
        //        button.setTitleColor(.lightGray, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(ordersButtonAction), for: .touchUpInside)
        
        return button
    }()
        
    /// Кнопка "Чертежи".
    private lazy var drawingButton: UIButton = {
        let button = UIButton()
        
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 8
        button.setTitle("Чертежи", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(drawingButtonAction), for: .touchUpInside)
        
        return button
    }()
    
    /// Кнопка "Склад".
    private lazy var stockButton: UIButton = {
        let button = UIButton()
        
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 8
        button.setTitle("Склад", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(stockButtonAction), for: .touchUpInside)
        
        return button
    }()
    
    /// Кнопка "Оборудование".
    private lazy var equipmentButton: UIButton = {
        let button = UIButton()
        
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 8
        button.setTitle("Оборудование", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(equipmentButtonAction), for: .touchUpInside)
        
        return button
    }()
    
    /// Кнопка "Сотрудники".
    private lazy var demployeesButton: UIButton = {
        let button = UIButton()
        
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 8
        button.setTitle("Сотрудники", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(demployeesButtonAction), for: .touchUpInside)
        
        return button
    }()
    
    /// Кнопка "Аналитика".
    private lazy var analyticsButton: UIButton = {
        let button = UIButton()
        
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 8
        button.setTitle("Аналитика", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(analyticsButtonAction), for: .touchUpInside)
        
        return button
    }()
    
    @objc func ordersButtonAction(sender: UIButton!) {
        print("Заказы tapped")
        output?.tapAction(identifier: "ordersButtonTapped")
    }
    
    @objc func drawingButtonAction(sender: UIButton!) {
        print("Чертежи tapped")
        output?.tapAction(identifier: "drawingButtonTapped")
    }
    
    @objc func stockButtonAction(sender: UIButton!) {
        print("Склад tapped")
        output?.tapAction(identifier: "stockButtonTapped")
    }
    
    @objc func equipmentButtonAction(sender: UIButton!) {
        print("Оборудование tapped")
        output?.tapAction(identifier: "equipmentButtonTapped")
    }
    
    @objc func demployeesButtonAction(sender: UIButton!) {
        print("Сотрудники tapped")
        output?.tapAction(identifier: "demployeesButtonTapped")
    }
    
    @objc func analyticsButtonAction(sender: UIButton!) {
        print("Аналитика tapped")
        output?.tapAction(identifier: "analyticsButtonTapped")
    }
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray6
        setupSubviews()
        setupConstraints()
    }
    
    
}


// MARK: - MenuViewInput
extension MenuViewController: MenuViewInput {
    ///  Установить пункты меню.
    func setMenuItems(menuItems: MenuItemsModel) {
        self.menuItemsModel = menuItems
        
    }
}


// MARK: - Private
private extension MenuViewController {
    /// Установка Subview.
    func setupSubviews() {
        [
            ordersButton,
            drawingButton,
            stockButton,
            equipmentButton,
            demployeesButton,
            analyticsButton
        ].forEach { view.addSubview($0) }
    }
    
    /// Установка констрейнтов для кнопок.
    func setupConstraints() {
        NSLayoutConstraint.activate([
            ordersButton.widthAnchor.constraint(equalToConstant: 256),
            ordersButton.heightAnchor.constraint(equalToConstant: 48),
            ordersButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 256),
            ordersButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            drawingButton.widthAnchor.constraint(equalToConstant: 256),
            drawingButton.heightAnchor.constraint(equalToConstant: 48),
            drawingButton.topAnchor.constraint(equalTo: ordersButton.bottomAnchor, constant: 8),
            drawingButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            stockButton.widthAnchor.constraint(equalToConstant: 256),
            stockButton.heightAnchor.constraint(equalToConstant: 48),
            stockButton.topAnchor.constraint(equalTo: drawingButton.bottomAnchor, constant: 8),
            stockButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            equipmentButton.widthAnchor.constraint(equalToConstant: 256),
            equipmentButton.heightAnchor.constraint(equalToConstant: 48),
            equipmentButton.topAnchor.constraint(equalTo: stockButton.bottomAnchor, constant: 8),
            equipmentButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            demployeesButton.widthAnchor.constraint(equalToConstant: 256),
            demployeesButton.heightAnchor.constraint(equalToConstant: 48),
            demployeesButton.topAnchor.constraint(equalTo: equipmentButton.bottomAnchor, constant: 8),
            demployeesButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            analyticsButton.widthAnchor.constraint(equalToConstant: 256),
            analyticsButton.heightAnchor.constraint(equalToConstant: 48),
            analyticsButton.topAnchor.constraint(equalTo: demployeesButton.bottomAnchor, constant: 8),
            analyticsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    
    
}
