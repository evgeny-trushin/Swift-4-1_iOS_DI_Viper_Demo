import Foundation

class ViperPresenter: NSObject, ViperModuleInput, ViperViewOutput, ViperInteractorOutput {

    weak var view: ViperViewInput?
    var interactor: ViperInteractorInput?
    var router: ViperRouterInput?
    
    func viewIsReady() {
        view?.update(title: "Viper module")
    }
    
    func showContent() {
        router?.showContent()
    }
}
