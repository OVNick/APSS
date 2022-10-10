//
//  OrderViewerInteractor.swift
//  APSS
//
//  Created by Николай Онучин on 10.10.2022.
//

import Foundation

/// Интерактор сцены "Просмотр заказов".
final class OrderViewerInteractor {
    
}


// MARK: - OrderViewerInteractorInput
extension OrderViewerInteractor: OrderViewerInteractorInput {
    /// Загружаем идентификатор выбранного элемента в DataManager.
    func saveIdentifier(identifier: String) {
        DataManager.identifier = identifier
    }
    
    
}
