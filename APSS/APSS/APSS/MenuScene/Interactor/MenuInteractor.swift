//
//  MenuInteractor.swift
//  APSS
//
//  Created by Николай Онучин on 02.10.2022.
//

import Foundation

/// Интерактор сцены "Меню".
final class MenuInteractor {
    
}


// MARK: - MenuInteractorInput
extension MenuInteractor: MenuInteractorInput {
    /// Загружаем идентификатор выбранного элемента в DataManager.
    func saveIdentifier(identifier: String) {
        DataManager.identifier = identifier
    }
    
    
}
