import UIKit

class ViperModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? ViperViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: ViperViewController) {

        let router = ViperRouter()
        router.transitionHandler = viewController
        
        let presenter = ViperPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = ViperInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        
        viewController.output = presenter
    }
}
