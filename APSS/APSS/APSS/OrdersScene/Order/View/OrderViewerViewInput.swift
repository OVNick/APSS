//
//  OrderViewerViewInput.swift
//  APSS
//
//  Created by Николай Онучин on 10.10.2022.
//

import Foundation

/// Входящий протокол сцены "Заказы".
protocol OrderViewerViewInput: AnyObject {
    ///  Установить заказы.
    func setOrdersViewerItems(ordersItems: [OrdersItemsModel])
    
}
