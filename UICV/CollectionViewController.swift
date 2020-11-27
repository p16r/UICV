import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource {

    override func loadView() {
        view = collectionView()
    }

    private func collectionView() -> UICollectionView {

        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: ColumnFlowLayout())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .systemGroupedBackground
        collectionView.register(cellType: IconTextCell.self)
        collectionView.dataSource = self

        return collectionView
    }

    @objc func reload() {
        (view as? UICollectionView)?.reloadData()
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }

    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(ofType: IconTextCell.self, for: indexPath)
//        cell.titleLabel.text = "Lorem ipsum dolor sit amet,consecteturadipiscingelit, sed do eiusmod tempor. Lorem ipsum dolor sit amet,consecteturadipiscingelit, sed do eiusmod tempor."
//        cell.imageView.image = UIImage(systemName: "\(indexPath.row).square.fill")
        return cell
    }

}

class ColumnFlowLayout: UICollectionViewFlowLayout {

    override func prepare() {
        super.prepare()

        guard let collectionView = collectionView else { return }

        let width = collectionView.bounds.inset(by: collectionView.layoutMargins).size.width
        estimatedItemSize = CGSize(width: width, height: 1)
//        estimatedItemSize = UICollectionViewFlowLayout.automaticSize

        sectionInset = UIEdgeInsets(top: minimumInteritemSpacing, left: 0, bottom: minimumInteritemSpacing, right: 0)
        sectionInsetReference = .fromSafeArea
    }

}

extension UICollectionView {

    func register<C: UICollectionViewCell>(cellType: C.Type) {
        register(cellType.self, forCellWithReuseIdentifier: String(describing: cellType.self))
    }

    func dequeueReusableCell<C: UICollectionViewCell>(ofType: C.Type, for indexPath: IndexPath) -> C {
        let identifier = String(describing: C.self)
        guard let cell = dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as? C else {
            fatalError(":(")
        }
        return cell
    }

}
