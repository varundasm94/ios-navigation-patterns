import Foundation

struct Item: Identifiable {
    let id: UUID
    let title: String
    let description: String

    static let samples: [Item] = [
        Item(id: UUID(), title: "Stack Navigation", description: "Push and pop views on a navigation stack."),
        Item(id: UUID(), title: "Tab Navigation", description: "Switch between independent sections using tabs."),
        Item(id: UUID(), title: "Modal Presentation", description: "Present views as sheets or full-screen covers."),
        Item(id: UUID(), title: "Split View", description: "Two- or three-column layout for iPad and macOS."),
    ]
}
