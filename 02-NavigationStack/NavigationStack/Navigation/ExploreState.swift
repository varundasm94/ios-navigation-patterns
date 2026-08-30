import SwiftUI

@Observable
class ExploreState {
    var path: [ExploreRoute] = []
    
    enum ExploreRoute: Hashable {
        case list
        case detail(Item)
    }
}
