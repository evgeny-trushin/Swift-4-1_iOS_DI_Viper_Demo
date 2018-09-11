import UIKit

class ViperViewController: UIViewController, ViperViewInput {

    @IBOutlet weak var btn: UIButton!
    var output: ViperViewOutput?

    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        output?.viewIsReady()
    }
    
    // MARK: ViperViewInput
    
    func update(title: String) {
        self.title = title
    }
    
    @IBAction func onClick(_ sender: UIButton, forEvent event: UIEvent) {
        output?.showContent()
    }
}
