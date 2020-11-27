import UIKit

//class IconTextCell: UICollectionViewCell {
//
//    let titleLabel: UILabel = {
//        let label = UILabel()
//        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.font = .preferredFont(forTextStyle: .body)
//        label.adjustsFontForContentSizeCategory = true
//        label.numberOfLines = 0
//        return label
//    } ()
//
//    let imageView: UIImageView = {
//        let imageView = UIImageView(image: UIImage(systemName: "circle.fill"))
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.contentMode = .scaleAspectFit
//        return imageView
//    } ()
//
//    private(set) lazy var stackView: UIStackView = {
//        let subviews = [
//            imageView,
//            titleLabel,
//        ]
//        let stackView = UIStackView(arrangedSubviews: subviews)
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.alignment = .center
//        stackView.distribution = .fill
//        stackView.axis = .horizontal
//        stackView.spacing = 8
//        return stackView
//    } ()
//
//    override init(frame: CGRect) {
//
//        super.init(frame: frame)
//        self.backgroundColor = .systemBackground
//        self.clipsToBounds = true
//        self.layer.cornerRadius = 16
//        self.layer.cornerCurve = .continuous
//        self.translatesAutoresizingMaskIntoConstraints = false
//
//        contentView.translatesAutoresizingMaskIntoConstraints = false
//        let view = UIView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(stackView)
//        contentView.addSubview(view)
//
//        let constraints = [
//            contentView.topAnchor.equalTo(topAnchor),
//            contentView.bottomAnchor.equalTo(bottomAnchor),
//            contentView.leadingAnchor.equalTo(leadingAnchor),
//            contentView.trailingAnchor.equalTo(trailingAnchor),
//
//            view.topAnchor.equalTo(contentView.layoutMarginsGuide.topAnchor),
//            view.bottomAnchor.equalTo(contentView.layoutMarginsGuide.bottomAnchor),
//            view.leadingAnchor.equalTo(contentView.layoutMarginsGuide.leadingAnchor),
//            view.trailingAnchor.equalTo(contentView.layoutMarginsGuide.trailingAnchor),
//
//            stackView.topAnchor.equalTo(view.topAnchor),
//            stackView.bottomAnchor.equalTo(view.bottomAnchor),
//            stackView.leadingAnchor.equalTo(view.leadingAnchor),
//            stackView.trailingAnchor.equalTo(view.trailingAnchor),
//
//            imageView.widthAnchor.equalTo(imageView.heightAnchor),
//            imageView.widthAnchor.equalTo(constant: 32),
//        ]
//
//        NSLayoutConstraint.activate(constraints)
//
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    private var isHeightCalculated = false
//
//    override func preferredLayoutAttributesFitting(
//        _ layoutAttributes: UICollectionViewLayoutAttributes
//    ) -> UICollectionViewLayoutAttributes {
//        setNeedsLayout()
//        layoutIfNeeded()
//        let size = contentView.systemLayoutSizeFitting(
//            layoutAttributes.size,
//            withHorizontalFittingPriority: .required,
//            verticalFittingPriority: .defaultLow
//        )
//        var frame = layoutAttributes.frame
//
//        frame.size = size
//        layoutAttributes.frame = frame
//        return layoutAttributes
//    }
//
//}

class IconTextCell: UICollectionViewCell {

    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .preferredFont(forTextStyle: .body)
        label.adjustsFontForContentSizeCategory = true
        label.text = "Lorem ipsum dolor sit amet,consecteturadipiscingelit, sed do eiusmod tempor. Lorem ipsum dolor sit amet,consecteturadipiscingelit, sed do eiusmod tempor."
        label.numberOfLines = 0
        return label
    } ()

    let imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "circle.fill"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        return imageView
    } ()

    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    } ()

    override init(frame: CGRect) {
        super.init(frame: frame)

        let stackView = UIStackView(arrangedSubviews: [imageView, titleLabel])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.axis = .horizontal
        stackView.spacing = 8
        contentView.addSubview(containerView)
        contentView.addSubview(stackView)

        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),

            stackView.topAnchor.constraint(equalToSystemSpacingBelow: containerView.topAnchor, multiplier: 2),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: containerView.leadingAnchor, multiplier: 2),
            containerView.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 2),
            containerView.bottomAnchor.constraint(equalToSystemSpacingBelow: stackView.bottomAnchor, multiplier: 2),
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
