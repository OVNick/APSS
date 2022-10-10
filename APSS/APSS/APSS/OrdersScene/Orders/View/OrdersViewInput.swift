//
//  OrdersViewInput.swift
//  APSS
//
//  Created by Николай Онучин on 02.10.2022.
//

import Foundation

/// Входящий протокол сцены "Заказы".
protocol OrdersViewInput: AnyObject {
    ///  Установить заказы.
    func setOrdersItems(ordersItems: [OrdersItemsModel])
    
}
