//
//  OrdersViewOutput.swift
//  APSS
//
//  Created by Николай Онучин on 02.10.2022.
//

import Foundation

/// Исходящий протокол сцены "Заказы".
protocol OrdersViewOutput: AnyObject {
    ///  Обработать нажатие на элемент.
    func tapAction(identifier: String)
    
}
