//
//  OrderViewerViewOutput.swift
//  APSS
//
//  Created by Николай Онучин on 10.10.2022.
//

import Foundation

/// Исходящий протокол сцены "Просмотр заказов".
protocol OrderViewerViewOutput: AnyObject {
    ///  Обработать нажатие на элемент.
    func tapAction(identifier: String)
    
}
