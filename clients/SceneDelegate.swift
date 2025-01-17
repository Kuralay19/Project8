//
//  SceneDelegate.swift
//  clients
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let tabBarController = TabBarViewController()
        let navigationController = UINavigationController(rootViewController: tabBarController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}
