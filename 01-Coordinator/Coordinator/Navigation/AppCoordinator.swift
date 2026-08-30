import SwiftUI
import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    func start()
}

extension Coordinator {
    func add(child: Coordinator) {
        childCoordinators.append(child)
    }
    
    func remove(child: Coordinator) {
        childCoordinators.removeAll { $0 === child }
    }
}

class AppCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        showHome()
    }

    func showHome() {
        let view = HomeView { [weak self] in
            self?.showList()
        }
        navigationController.pushViewController(UIHostingController(rootView: view), animated: true)
    }
    
    func showList() {
        let child = ListCoordinator(navigationController: navigationController)
        child.onFinish = { [weak self, weak child] in
            guard let child = child else { return }
            self?.remove(child: child)
        }
        add(child: child)
        child.start()
    }
}
