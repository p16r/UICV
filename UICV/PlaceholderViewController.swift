import UIKit

class PlaceholderViewController: UIViewController {

    let string: String

    init(string: String) {
        self.string = string
        super.init(nibName: nil, bundle: nil)
        self.title = string
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        view = label()
    }

    private func label() -> UILabel {
        let label = UILabel()
        label.text = string
        label.backgroundColor = .systemBackground
        label.textAlignment = .center
        label.numberOfLines = 0
        label.adjustsFontForContentSizeCategory = true
        return label
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
