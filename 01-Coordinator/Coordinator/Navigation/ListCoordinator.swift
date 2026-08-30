import SwiftUI
import UIKit

class ListCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    let navigationController: UINavigationController
    var onFinish: (()->Void)?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let view = ListView(items: Item.samples) { [weak self] item in
            self?.showDetail(item: item)
        }
        let vc = HostingController(rootView: view)
        vc.onDeinit = { [weak self] in self?.onFinish?() }
        navigationController.pushViewController(vc, animated: true)
    }
    
    func showDetail(item: Item) {
        let view = DetailView(item: item)
        navigationController.pushViewController(HostingController(rootView: view), animated: true)
    }
}
