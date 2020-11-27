import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(
        _ application: UIApplication,
        configurationForConnecting connectingSceneSession: UISceneSession,
        options: UIScene.ConnectionOptions
    ) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Root", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

}

extension NSLayoutYAxisAnchor {

    typealias ConstantSpacingTuple = (anchor: NSLayoutYAxisAnchor, constant: CGFloat)

    typealias SystemSpacingTuple = (anchor: NSLayoutYAxisAnchor, multiple: CGFloat)

    static func + (lhs: NSLayoutYAxisAnchor, rhs: CGFloat) -> ConstantSpacingTuple {
        (lhs, rhs)
    }

    static func - (lhs: NSLayoutYAxisAnchor, rhs: CGFloat) -> ConstantSpacingTuple {
        (lhs, -rhs)
    }

    static func == (lhs: NSLayoutYAxisAnchor, rhs: ConstantSpacingTuple) -> NSLayoutConstraint {
        lhs.constraint(equalTo: rhs.anchor, constant: rhs.constant)
    }

    static func <= (lhs: NSLayoutYAxisAnchor, rhs: ConstantSpacingTuple) -> NSLayoutConstraint {
        lhs.constraint(lessThanOrEqualTo: rhs.anchor, constant: rhs.constant)
    }

    static func >= (lhs: NSLayoutYAxisAnchor, rhs: ConstantSpacingTuple) -> NSLayoutConstraint {
        lhs.constraint(greaterThanOrEqualTo: rhs.anchor, constant: rhs.constant)
    }

    static func * (lhs: NSLayoutYAxisAnchor, rhs: CGFloat) -> SystemSpacingTuple {
        (lhs, rhs)
    }

    static func == (lhs: NSLayoutYAxisAnchor, rhs: SystemSpacingTuple) -> NSLayoutConstraint {
        lhs.constraint(equalToSystemSpacingBelow: rhs.anchor, multiplier: rhs.multiple)
    }

    static func <= (lhs: NSLayoutYAxisAnchor, rhs: SystemSpacingTuple) -> NSLayoutConstraint {
        lhs.constraint(lessThanOrEqualToSystemSpacingBelow: rhs.anchor, multiplier: rhs.multiple)
    }

    static func >= (lhs: NSLayoutYAxisAnchor, rhs: SystemSpacingTuple) -> NSLayoutConstraint {
        lhs.constraint(greaterThanOrEqualToSystemSpacingBelow: rhs.anchor, multiplier: rhs.multiple)
    }

//    func equals(_ other: NSLayoutYAxisAnchor) -> NSLayoutConstraint {
//        constraint(equalTo: other)
//    }
//
//    func greaterThanOrEqualToSystemSpacing(below anchor: NSLayoutYAxisAnchor) -> NSLayoutConstraint {
//        self.constraint(greaterThanOrEqualToSystemSpacingBelow: anchor, multiplier: 1)
//    }

}

extension NSLayoutXAxisAnchor {

    typealias ConstantSpacingTuple = (anchor: NSLayoutXAxisAnchor, constant: CGFloat)

    typealias SystemSpacingTuple = (anchor: NSLayoutXAxisAnchor, multiple: CGFloat)

    static func + (lhs: NSLayoutXAxisAnchor, rhs: CGFloat) -> ConstantSpacingTuple {
        (lhs, rhs)
    }

    static func - (lhs: NSLayoutXAxisAnchor, rhs: CGFloat) -> ConstantSpacingTuple {
        (lhs, -rhs)
    }

    static func == (lhs: NSLayoutXAxisAnchor, rhs: ConstantSpacingTuple) -> NSLayoutConstraint {
        lhs.constraint(equalTo: rhs.anchor, constant: rhs.constant)
    }

    static func <= (lhs: NSLayoutXAxisAnchor, rhs: ConstantSpacingTuple) -> NSLayoutConstraint {
        lhs.constraint(lessThanOrEqualTo: rhs.anchor, constant: rhs.constant)
    }

    static func >= (lhs: NSLayoutXAxisAnchor, rhs: ConstantSpacingTuple) -> NSLayoutConstraint {
        lhs.constraint(greaterThanOrEqualTo: rhs.anchor, constant: rhs.constant)
    }

    static func * (lhs: NSLayoutXAxisAnchor, rhs: CGFloat) -> SystemSpacingTuple {
        (lhs, rhs)
    }

    static func == (lhs: NSLayoutXAxisAnchor, rhs: SystemSpacingTuple) -> NSLayoutConstraint {
        lhs.constraint(equalToSystemSpacingAfter: rhs.anchor, multiplier: rhs.multiple)
    }

    static func <= (lhs: NSLayoutXAxisAnchor, rhs: SystemSpacingTuple) -> NSLayoutConstraint {
        lhs.constraint(lessThanOrEqualToSystemSpacingAfter: rhs.anchor, multiplier: rhs.multiple)
    }

    static func >= (lhs: NSLayoutXAxisAnchor, rhs: SystemSpacingTuple) -> NSLayoutConstraint {
        lhs.constraint(greaterThanOrEqualToSystemSpacingAfter: rhs.anchor, multiplier: rhs.multiple)
    }

}
