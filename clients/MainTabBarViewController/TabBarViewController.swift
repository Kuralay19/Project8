import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let booksVC = createViewController(viewControllerType: BookViewController.self, title: "Books", tabBarSystemItem: .bookmarks)
        let progressVC = createViewController(viewControllerType: ProgressViewController.self, title: "Favorites", tabBarSystemItem: .favorites)
        let profileVC = createViewController(viewControllerType: ProfileViewController.self, title: "Profile", tabBarSystemItem: .contacts)
        
        viewControllers = [booksVC, progressVC, profileVC]
    }
    
    private func createViewController<T: UIViewController>(viewControllerType: T.Type, title: String, tabBarSystemItem: UITabBarItem.SystemItem) -> UINavigationController {
        let viewController = viewControllerType.init()
        viewController.title = title
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem = UITabBarItem(tabBarSystemItem: tabBarSystemItem, tag: 0)
        return navigationController
    }
}

// Inside AppDelegate.swift

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let window = UIWindow(frame: UIScreen.main.bounds)
    window.rootViewController = TabBarViewController()
    window.makeKeyAndVisible()
    return true
}
