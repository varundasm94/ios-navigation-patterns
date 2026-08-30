import SwiftUI

struct ListView: View {
    let items: [Item]
    
    @Environment(ExploreState.self) private var state

    var body: some View {
        List(items) { item in
            Button {
                state.path.append(.detail(item))
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
