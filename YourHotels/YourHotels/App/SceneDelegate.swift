//
//  SceneDelegate.swift
//  YourHotels
//
//  Created by Vitaly Anpilov on 18.12.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)
        
        let networkClient = NetworkClient()
        let navigationController = UINavigationController()
        let appCoordinator = AppCoordinator(
            navigationController: navigationController,
            networkClient: networkClient
        )
        appCoordinator.start()
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}
