import UIKit

extension NSLayoutAnchor {

    @objc
    func equalTo(_ anchor: NSLayoutAnchor<AnchorType>) -> NSLayoutConstraint {
        constraint(equalTo: anchor)
    }

    @objc
    func equalTo(_ anchor: NSLayoutAnchor<AnchorType>, constant: CGFloat) -> NSLayoutConstraint {
        constraint(equalTo: anchor, constant: constant)
    }

    @objc
    func greaterThanOrEqualTo(_ anchor: NSLayoutAnchor<AnchorType>) -> NSLayoutConstraint {
        constraint(greaterThanOrEqualTo: anchor)
    }

    @objc
    func greaterThanOrEqualTo(_ anchor: NSLayoutAnchor<AnchorType>, constant: CGFloat) -> NSLayoutConstraint {
        constraint(greaterThanOrEqualTo: anchor, constant: constant)
    }

    @objc
    func lessThanOrEqualTo(_ anchor: NSLayoutAnchor<AnchorType>) -> NSLayoutConstraint {
        constraint(lessThanOrEqualTo: anchor)
    }

    @objc
    func lessThanOrEqualTo(_ anchor: NSLayoutAnchor<AnchorType>, constant: CGFloat) -> NSLayoutConstraint {
        constraint(lessThanOrEqualTo: anchor, constant: constant)
    }

}

extension NSLayoutYAxisAnchor {

    @inlinable
    func equalTo(systemSpacingBelow anchor: NSLayoutYAxisAnchor, multiplier: CGFloat = 1) -> NSLayoutConstraint {
        constraint(equalToSystemSpacingBelow: anchor, multiplier: multiplier)
    }

    @inlinable
    func greaterThanOrEqualTo(
        systemSpacingBelow anchor: NSLayoutYAxisAnchor,
        multiplier: CGFloat = 1
    ) -> NSLayoutConstraint {
        constraint(greaterThanOrEqualToSystemSpacingBelow: anchor, multiplier: multiplier)
    }

    @inlinable
    func lessThanOrEqualTo(
        systemSpacingBelow anchor: NSLayoutYAxisAnchor,
        multiplier: CGFloat = 1
    ) -> NSLayoutConstraint {
        constraint(lessThanOrEqualToSystemSpacingBelow: anchor, multiplier: multiplier)
    }

    @inlinable
    func equalTo(systemSpacingAbove anchor: NSLayoutYAxisAnchor, multiplier: CGFloat = 1) -> NSLayoutConstraint {
        anchor.equalTo(systemSpacingBelow: self, multiplier: multiplier)
    }

    @inlinable
    func greaterThanOrEqualTo(
        systemSpacingAbove anchor: NSLayoutYAxisAnchor,
        multiplier: CGFloat = 1
    ) -> NSLayoutConstraint {
        anchor.greaterThanOrEqualTo(systemSpacingBelow: self, multiplier: multiplier)
    }

    @inlinable
    func lessThanOrEqualTo(
        systemSpacingAbove anchor: NSLayoutYAxisAnchor,
        multiplier: CGFloat = 1
    ) -> NSLayoutConstraint {
        anchor.lessThanOrEqualTo(systemSpacingBelow: self, multiplier: multiplier)
    }

}

extension NSLayoutXAxisAnchor {

    @inlinable
    func equalTo(systemSpacingAfter other: NSLayoutXAxisAnchor, multiplier: CGFloat = 1) -> NSLayoutConstraint {
        constraint(equalToSystemSpacingAfter: other, multiplier: multiplier)
    }

    @inlinable
    func greaterThanOrEqualTo(
        systemSpacingAfter other: NSLayoutXAxisAnchor,
        multiplier: CGFloat = 1
    ) -> NSLayoutConstraint {
        constraint(greaterThanOrEqualToSystemSpacingAfter: other, multiplier: multiplier)
    }

    @inlinable
    func lessThanOrEqualTo(
        systemSpacingAfter other: NSLayoutXAxisAnchor,
        multiplier: CGFloat = 1
    ) -> NSLayoutConstraint {
        constraint(lessThanOrEqualToSystemSpacingAfter: other, multiplier: multiplier)
    }

    @inlinable
    func equalTo(systemSpacingBefore other: NSLayoutXAxisAnchor, multiplier: CGFloat = 1) -> NSLayoutConstraint {
        other.equalTo(systemSpacingAfter: self, multiplier: multiplier)
    }

    @inlinable
    func greaterThanOrEqualTo(
        systemSpacingBefore other: NSLayoutXAxisAnchor,
        multiplier: CGFloat = 1
    ) -> NSLayoutConstraint {
        other.greaterThanOrEqualTo(systemSpacingAfter: self, multiplier: multiplier)
    }

    @inlinable
    func lessThanOrEqualTo(
        systemSpacingBefore other: NSLayoutXAxisAnchor,
        multiplier: CGFloat = 1
    ) -> NSLayoutConstraint {
        other.lessThanOrEqualTo(systemSpacingAfter: self, multiplier: multiplier)
    }

}

extension NSLayoutDimension {

    @inlinable
    func equalTo(constant: CGFloat) -> NSLayoutConstraint {
        constraint(equalToConstant: constant)
    }

    @inlinable
    func greaterThanOrEqualTo(constant: CGFloat) -> NSLayoutConstraint {
        constraint(greaterThanOrEqualToConstant: constant)
    }

    @inlinable
    func lessThanOrEqualTo(constant: CGFloat) -> NSLayoutConstraint {
        constraint(lessThanOrEqualToConstant: constant)
    }

    @inlinable
    func equalTo(_ anchor: NSLayoutDimension, multiplier: CGFloat = 1, constant: CGFloat = 0) -> NSLayoutConstraint {
        constraint(equalTo: anchor, multiplier: multiplier, constant: constant)
    }

    @inlinable
    func greaterThanOrEqualTo(
        _ anchor: NSLayoutDimension,
        multiplier: CGFloat = 1,
        constant: CGFloat = 0
    ) -> NSLayoutConstraint {
        constraint(greaterThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
    }

    @inlinable
    func lessThanOrEqualTo(
        _ anchor: NSLayoutDimension,
        multiplier: CGFloat = 1,
        constant: CGFloat = 0
    ) -> NSLayoutConstraint {
        constraint(lessThanOrEqualTo: anchor, multiplier: multiplier, constant: constant)
    }

}

extension NSLayoutConstraint {

    @discardableResult
    func setting<T>(
        _ keyPath: ReferenceWritableKeyPath<NSLayoutConstraint, T>,
        to value: @autoclosure () -> T
    ) -> Self {
        self[keyPath: keyPath] = value()
        return self
    }

}
