//
//  OrdersPresenter.swift
//  APSS
//
//  Created by Николай Онучин on 02.10.2022.
//

import UIKit

/// Презентер сцены "Меню".
final class OrdersPresenter {
    // Ссылки на элементы модуля.
    weak var view: OrdersViewInput?
    private let router: OrdersRouterInput
    private let interactor: OrdersInteractorInput
    
    /// Инициализатор сцены "Заказы".
    init(router: OrdersRouterInput,
         interactor: OrdersInteractorInput) {
        self.router = router
        self.interactor = interactor
    }
    
    
}


// MARK: - OrdersViewOutput
extension OrdersPresenter: OrdersViewOutput {  
    ///  Обрабатываем нажатие на элемент.
    func tapAction(identifier: String) {
        // Сохраняем иденттификатор выбранного элемнта в DataManager.
        interactor.saveIdentifier(identifier: identifier)
        // Переходим на следующую сцену.
        router.openNextScene()
    }
    
    
}
