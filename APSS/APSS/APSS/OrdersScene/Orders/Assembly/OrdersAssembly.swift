//
//  OrdersAssembly.swift
//  APSS
//
//  Created by Николай Онучин on 02.10.2022.
//

import UIKit

/// Сборщик сцены "Заказы".
final class OrdersAssembly {
    /// Собрать сцену "Заказы".
    /// - Returns: ViewController.
    static func makeOrdersSceneVC() -> UIViewController {
        let vc = OrdersViewController()
        let router = OrdersRouter(currentVC: vc)
        let interactor = OrdersInteractor()
        let presenter = OrdersPresenter(router: router, interactor: interactor)
        vc.output = presenter
        presenter.view = vc
        return vc
    }
    
    
}


