import SwiftUI

struct RootView: View {
    
    @State private var appState = AppState()
    
    var body: some View {
        TabView {
            ExploreCoordinatorView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
        }
        .environment(appState)
        .onOpenURL(perform: { appState.handle($0) })
    }
}
