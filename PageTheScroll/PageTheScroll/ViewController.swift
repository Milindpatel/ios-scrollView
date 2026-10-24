import UIKit

/// A paging scroll view with one centred icon per page.
class ViewController: UIViewController {
    @IBOutlet var scrollView: UIScrollView!

    private let imageNames = ["icon0", "icon1", "icon2"]
    private var images = [UIImageView]()
    private let iconSize: CGFloat = 150

    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.clipsToBounds = false
        for name in imageNames {
            let imageView = UIImageView(image: UIImage(named: name))
            imageView.contentMode = .scaleAspectFit
            scrollView.addSubview(imageView)
            images.append(imageView)
        }
    }

    // Lay the pages out whenever the size changes (first layout, rotation, split view).
    // Previously this ran in viewDidAppear and added a new set of icons every time.
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let page = scrollView.bounds.size
        for (index, imageView) in images.enumerated() {
            let centerX = page.width / 2 + page.width * CGFloat(index)
            imageView.frame = CGRect(
                x: centerX - iconSize / 2,
                y: page.height / 2 - iconSize / 2,
                width: iconSize,
                height: iconSize
            )
        }
        scrollView.contentSize = CGSize(width: page.width * CGFloat(images.count), height: page.height)
    }
}
