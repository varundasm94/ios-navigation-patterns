import SwiftUI

@Observable
class AppState {
    var exploreState = ExploreState()
}

extension AppState {
    func handle(_ url: URL) {
        guard url.scheme == "navapp" else { return }
        
        switch url.host {
        case "list":
            self.exploreState.path = [.list]
        case "detail":
            let components = URLComponents(url: url, resolvingAgainstBaseURL: false)
            let title = components?.queryItems?.first(where: { $0.name == "title" })?.value ?? ""
            if let item = Item.samples.first(where: { $0.title == title }) {
                self.exploreState.path = [.list, .detail(item)]
            }
        default:
            break
        }
    }
}
