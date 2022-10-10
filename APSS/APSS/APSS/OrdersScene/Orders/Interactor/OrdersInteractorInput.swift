//
//  OrdersInteractorInput.swift
//  APSS
//
//  Created by Николай Онучин on 02.10.2022.
//

import Foundation

/// Входящий протокол интерактора  сцены "Заказы".
protocol OrdersInteractorInput: AnyObject {
    /// Загрузить идентификатор выбранного элемента в DataManager.
    func saveIdentifier(identifier: String)
}
