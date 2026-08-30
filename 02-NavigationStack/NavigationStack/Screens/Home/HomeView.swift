import SwiftUI

struct HomeView: View {

    @Environment(AppState.self) private var appState
    
    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "map")
                .font(.system(size: 64))
                .foregroundStyle(.tint)
            Text("iOS Navigation Patterns")
                .font(.title)
                .bold()
            Text("Explore different navigation approaches using UIKit + SwiftUI.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Button("Explore Patterns") {
                appState.path.append(.list)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("Home")
    }
}
