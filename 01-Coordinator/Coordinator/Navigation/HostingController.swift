import SwiftUI

class HostingController<V: View>: UIHostingController<V> {
    var onDeinit: (()->Void)?
    deinit { onDeinit?() }
}
