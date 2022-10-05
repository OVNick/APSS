//
//  MenuViewInput.swift
//  APSS
//
//  Created by Николай Онучин on 02.10.2022.
//

/// Входящий протокол сцены "Меню".
protocol MenuViewInput: AnyObject {
    ///  Установить пункты меню.
    func setMenuItems(menuItems: MenuItemsModel)
}
