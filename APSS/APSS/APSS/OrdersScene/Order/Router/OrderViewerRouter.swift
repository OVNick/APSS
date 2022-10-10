//
//  OrderViewerRouter.swift
//  APSS
//
//  Created by Николай Онучин on 10.10.2022.
//

import UIKit

/// Роутер сцены "Просмотр заказа".
final class OrderViewerRouter {
    /// Текущий ViewController.
    private let currentVC: UIViewController
    
    /// Инициализатор.
    /// - Parameter currentVC: Текущий ViewController.
    init(currentVC: UIViewController) {
        self.currentVC = currentVC
    }
    
    
}

// MARK: - OrderViewerRouterInput

extension OrderViewerRouter: OrderViewerRouterInput {
    // Открываем следующую сцену.
    func openNextScene() {
        // Временный переход (сцена "Фото" будет заменена на сцену "Профиль пользователя")
//        let nextVC = PhotoAssembly.makePhotoListVC()
//        currentVC.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    
}
