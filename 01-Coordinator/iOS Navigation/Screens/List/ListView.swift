import SwiftUI

struct ListView: View {
    let items: [Item]
    var onItemTapped: (Item) -> Void

    var body: some View {
        List(items) { item in
            Button {
                onItemTapped(item)
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

#Preview {
    NavigationView { ListView(items: Item.samples, onItemTapped: { _ in }) }
}
