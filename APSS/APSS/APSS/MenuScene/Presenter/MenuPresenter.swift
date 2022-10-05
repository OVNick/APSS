//
//  MenuPresenter.swift
//  APSS
//
//  Created by Николай Онучин on 02.10.2022.
//

import UIKit

/// Презентер сцены "Меню".
final class MenuPresenter {
    // Ссылки на элементы модуля.
    weak var view: MenuViewInput?
    
    /// Титульный лейбл.
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
}

// MARK: - MenuViewOutput
extension MenuPresenter: MenuViewOutput {
    ///  Обрабатываем нажатие на элемент.
    func tapAction(identifier: String) {
        
    }
}
