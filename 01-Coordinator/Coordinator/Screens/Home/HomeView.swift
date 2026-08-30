import SwiftUI

struct HomeView: View {
    var onNext: () -> Void

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
                onNext()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("Home")
    }
}
