import UIKit

class RootSceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).

        guard let windowScene = (scene as? UIWindowScene) else { return }

        let window = UIWindow(windowScene: windowScene)
        window.setRootViewController(
            to: rootViewController(),
            animated: false,
            makeKeyAndVisible: true
        )
        self.window = window
    }

    /// Supplies the root view controller of this scene's window.
    private func rootViewController() -> UIViewController {
        let placeholderViewController = CollectionViewController()
        let navigationController = UINavigationController(rootViewController: placeholderViewController)
        return navigationController
    }

}

extension UIWindow {

    ///
    /// Sets the root view controller of the window.
    ///
    /// - Parameters:
    ///
    ///   - rootViewController:
    ///       A view controller to set as the root of this window.
    ///
    ///   - animated:
    ///       Specify `true` to animate the transition or `false` if you do not
    ///       want the transition to be animated. You might specify `false` if
    ///       you are setting up the root view controller at launch time.
    ///
    ///   - completion:
    ///       An optional closure to be executed when the animation sequence
    ///       ends. If the new controller is set without animation, then this
    ///       block is called immediately after the controller is set. This
    ///       block has no return value and takes a single Boolean argument
    ///       that indicates whether or not the animations actually finished
    ///       before the completion handler was called. This parameter defaults
    ///       to `nil`.
    ///
    func setRootViewController(
        to rootViewController: UIViewController,
        animated: Bool,
        makeKeyAndVisible windowShouldBeKeyAndVisible: Bool = false,
        completion: ((Bool) -> Void)? = nil
    ) {
        self.rootViewController = rootViewController
        if windowShouldBeKeyAndVisible {
            self.makeKeyAndVisible()
        }

        guard animated else {
            completion?(true)
            return
        }

        UIView.transition(
            with: self,
            duration: 0.2,
            options: [.transitionFlipFromRight],
            animations: nil,
            completion: completion
        )
    }

}
