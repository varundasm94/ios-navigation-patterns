import SwiftUI

struct RootView: View {
    
    @State private var appState = AppState()
    
    var body: some View {
        NavigationStack(path: $appState.path) {
            HomeView()
                .navigationDestination(for: AppState.Route.self, destination: { route in destination(route)})
        }
        .environment(appState)
        .onOpenURL(perform: { appState.handle($0) })
    }

    @ViewBuilder
    private func destination(_ route: AppState.Route) -> some View {
        switch route {
        case .list:
            ListView(items: Item.samples)
        case .detail(let item):
            DetailView(item: item)
        }
    }
}
