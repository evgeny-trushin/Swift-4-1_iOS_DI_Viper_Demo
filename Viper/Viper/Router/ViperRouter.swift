import UIKit

class ViperRouter: NSObject, ViperRouterInput {
    
	weak var transitionHandler : UIViewController?
    
    func showContent(){
        let viperViewController = ViperViewController(nibName: "ViperViewController", bundle: nil)
        let configurator = ViperModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: viperViewController)
        
        transitionHandler?.navigationController?.pushViewController(viperViewController, animated: true)
    }
}
