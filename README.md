# iOS Navigation Patterns

A hands-on reference project exploring different iOS navigation architectures using **UIKit + SwiftUI**. Each folder is a standalone Xcode project implementing the same 3-screen flow (Home → List → Detail) so the only variable is the navigation pattern.

## Patterns

| # | Pattern | Description |
|---|---------|-------------|
| [01-Coordinator](./01-Coordinator) | **Coordinator** | A dedicated `AppCoordinator` class owns the `UINavigationController` and drives all navigation. SwiftUI views are decoupled — they fire closures; the coordinator decides what comes next. |

> More patterns coming: Router (SwiftUI-native), MVVM + Navigation State, TCA.

## The App

Each project runs the same simple flow:

```
Home → List of navigation patterns → Detail for selected pattern
```

This keeps the UI consistent so you can focus entirely on how the navigation layer differs between patterns.

## Tech Stack

- Swift 5.9+
- iOS 16+
- UIKit (`UINavigationController`, `UIHostingController`)
- SwiftUI views

## Running a Project

1. Open any numbered folder in Xcode (e.g. `01-Coordinator/iOS Navigation.xcodeproj`)
2. Select a simulator
3. Run

## Key Concepts Covered

- `UIHostingController` as the bridge between UIKit and SwiftUI
- Closure injection for decoupled navigation callbacks
- How `UINavigationController` drives the stack
- Keeping SwiftUI views free of UIKit imports
