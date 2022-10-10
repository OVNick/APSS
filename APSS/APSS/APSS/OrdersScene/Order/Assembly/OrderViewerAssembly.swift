//
//  OrderViewerAssembly.swift
//  APSS
//
//  Created by Николай Онучин on 10.10.2022.
//

import UIKit

/// Сборщик сцены "Просмотр заказа".
final class OrderViewerAssembly {
    /// Собрать сцену "Заказы".
    /// - Returns: ViewController.
    static func makeOrderSceneVC() -> UIViewController {
        let vc = OrderViewerViewController()
        let router = OrderViewerRouter(currentVC: vc)
        let interactor = OrderViewerInteractor()
        let presenter = OrderViewerPresenter(router: router, interactor: interactor)
        vc.output = presenter
        presenter.view = vc
        return vc
    }
    
    
}
