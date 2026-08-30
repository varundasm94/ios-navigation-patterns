import SwiftUI

struct DetailView: View {
    let item: Item

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Image(systemName: "doc.text.magnifyingglass")
                    .font(.system(size: 48))
                    .foregroundStyle(.tint)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top, 24)
                Text(item.title)
                    .font(.title)
                    .bold()
                Divider()
                Text(item.description)
                    .font(.body)
                    .foregroundStyle(.secondary)
            }
            .padding()
        }
        .navigationTitle(item.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationView {
        DetailView(item: Item.samples[0])
    }
}
