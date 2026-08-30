import SwiftUI

struct ExploreCoordinatorView: View {
    @Environment(AppState.self) private var appState
    
    var body: some View {
        @Bindable var appState = appState
        NavigationStack(path: $appState.exploreState.path) {
            HomeView()
                .navigationDestination(for: ExploreState.ExploreRoute.self, destination: { route in destination(route)})
        }
        .environment(appState.exploreState)
    }

    @ViewBuilder
    private func destination(_ route: ExploreState.ExploreRoute) -> some View {
        switch route {
        case .list:
            ListView(items: Item.samples)
        case .detail(let item):
            DetailView(item: item)
        }
    }
}
