//
//  OrdersInteractor.swift
//  APSS
//
//  Created by Николай Онучин on 02.10.2022.
//

import Foundation

/// Интерактор сцены "Закказы".
final class OrdersInteractor {
    
}


// MARK: - OrdersInteractorInput
extension OrdersInteractor: OrdersInteractorInput {
    /// Загружаем идентификатор выбранного элемента в DataManager.
    func saveIdentifier(identifier: String) {
        DataManager.identifier = identifier
    }
    
    
}
