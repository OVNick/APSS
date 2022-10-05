//
//  MenuAssembly.swift
//  APSS
//
//  Created by Николай Онучин on 02.10.2022.
//

import UIKit

/// Сборщик сцены "Меню".
final class MenuAssembly {
    /// Собрать сцену "Меню".
    /// - Returns: ViewController.
    static func makeMenuSceneVC() -> UIViewController {
        let vc = MenuViewController()
        let router = MenuRouter(currentVC: vc)
        let interactor = MenuInteractor()
        let presenter = MenuPresenter(router: router, interactor: interactor)
        vc.output = presenter
        presenter.view = vc
        return vc
    }
    
    
}
