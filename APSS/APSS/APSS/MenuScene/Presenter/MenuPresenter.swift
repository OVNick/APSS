//
//  MenuPresenter.swift
//  APSS
//
//  Created by Николай Онучин on 02.10.2022.
//

import UIKit

/// Презентер сцены "Меню".
final class MenuPresenter {
    // Ссылки на элементы модуля.
    weak var view: MenuViewInput?
    private let router: MenuRouterInput
    private let interactor: MenuInteractorInput
    
    /// Инициализатор сцены "Друзья".
    init(router: MenuRouterInput,
         interactor: MenuInteractorInput) {
        self.router = router
        self.interactor = interactor
    }
    
    
}


// MARK: - MenuViewOutput
extension MenuPresenter: MenuViewOutput {
    ///  Обрабатываем нажатие на элемент.
    func tapAction(identifier: String) {
        // Сохраняем иденттификатор выбранного элемнта в DataManager.
        interactor.saveIdentifier(identifier: identifier)
        // Переходим на следующую сцену.
        router.openNextScene()
    }
    
    
}
