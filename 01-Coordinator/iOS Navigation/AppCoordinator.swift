import SwiftUI
import UIKit

protocol Coordinator {
    func start()
}

class AppCoordinator: Coordinator {
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
        let view = ListView(items: Item.samples) { [weak self] item in
            self?.showDetail(item: item)
        }
        navigationController.pushViewController(UIHostingController(rootView: view), animated: true)
    }
    
    func showDetail(item: Item) {
        let view = DetailView(item: item)
        navigationController.pushViewController(UIHostingController(rootView: view), animated: true)
    }
}
