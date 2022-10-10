//
//  OrderViewerInteractorInput.swift
//  APSS
//
//  Created by Николай Онучин on 10.10.2022.
//

import Foundation

/// Входящий протокол интерактора  сцены "Просмотр заказов".
protocol OrderViewerInteractorInput: AnyObject {
    /// Загрузить идентификатор выбранного элемента в DataManager.
    func saveIdentifier(identifier: String)
}
