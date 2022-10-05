//
//  OrdersRouter.swift
//  APSS
//
//  Created by Николай Онучин on 02.10.2022.
//

import UIKit

/// Роутер сцены "Заказы".
final class OrdersRouter {
    /// Текущий ViewController.
    private let currentVC: UIViewController
    
    /// Инициализатор.
    /// - Parameter currentVC: Текущий ViewController.
    init(currentVC: UIViewController) {
        self.currentVC = currentVC
    }
    
    
}

// MARK: - OrdersRouterInput

extension OrdersRouter: OrdersRouterInput {
    // Открываем следующую сцену.
    func openNextScene() {
        // Временный переход (сцена "Фото" будет заменена на сцену "Профиль пользователя")
//        let nextVC = PhotoAssembly.makePhotoListVC()
//        currentVC.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    
}
