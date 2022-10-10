//
//  OrderViewerPresenter.swift
//  APSS
//
//  Created by Николай Онучин on 10.10.2022.
//

import UIKit

/// Презентер сцены "Просмотр заказов".
final class OrderViewerPresenter {
    // Ссылки на элементы модуля.
    weak var view: OrderViewerViewInput?
    private let router: OrderViewerRouterInput
    private let interactor: OrderViewerInteractorInput
    
    /// Инициализатор сцены "Просмотр заказов".
    init(router: OrderViewerRouterInput,
         interactor: OrderViewerInteractorInput) {
        self.router = router
        self.interactor = interactor
    }
    
    
}


// MARK: - OrderViewerViewOutput
extension OrderViewerPresenter: OrderViewerViewOutput {
    ///  Обрабатываем нажатие на элемент.
    func tapAction(identifier: String) {
//        // Сохраняем иденттификатор выбранного элемнта в DataManager.
//        interactor.saveIdentifier(identifier: identifier)
//        // Переходим на следующую сцену.
//        router.openNextScene()
    }
    
    
}
