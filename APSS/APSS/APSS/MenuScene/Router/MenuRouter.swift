//
//  MenuRouter.swift
//  APSS
//
//  Created by Николай Онучин on 02.10.2022.
//

import UIKit

/// Роутер сцены "Меню".
final class MenuRouter {
    /// Текущий ViewController.
    private let currentVC: UIViewController
    
    /// Инициализатор.
    /// - Parameter currentVC: Текущий ViewController.
    init(currentVC: UIViewController) {
        self.currentVC = currentVC
    }
    
    
}

// MARK: - MenuRouterInput

extension MenuRouter: MenuRouterInput {
    // Открываем следующую сцену.
    func openNextScene() {
        let identifire = DataManager.identifier
        switch identifire {
        case "ordersButtonTapped":
            let nextVC = OrdersAssembly.makeOrdersSceneVC()
            currentVC.navigationController?.pushViewController(nextVC, animated: true)
        default:
            print("Нужно доделать")
        }
    }
    
    
}
