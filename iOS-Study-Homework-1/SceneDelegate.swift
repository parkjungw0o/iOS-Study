//
//  SceneDelegate.swift
//  iOS-Study-Homework-1
//
//  Created by 박정우 on 6/17/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }

        window = UIWindow(windowScene: windowScene)

        let startVC = StartViewController()
        let nav = UINavigationController(rootViewController: startVC)
        
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
    }
}
