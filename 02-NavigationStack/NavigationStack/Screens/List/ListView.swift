import SwiftUI

struct ListView: View {
    let items: [Item]
    
    @Environment(AppState.self) private var appState

    var body: some View {
        List(items) { item in
            Button {
                appState.path.append(.detail(item))
            } label: {
                VStack(alignment: .leading, spacing: 4) {
                    Text(item.title)
                        .font(.headline)
                    Text(item.description)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        .lineLimit(2)
                }
                .padding(.vertical, 4)
            }
            .tint(.primary)
        }
        .navigationTitle("Patterns")
    }
}
