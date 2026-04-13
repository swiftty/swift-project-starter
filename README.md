# swift-project-starter Pre-build executable binary for SwiftPM plugins

This repository distributes a pre-built executable binary for [swift-project-starter](https://github.com/swiftty/swift-project-starter-impl) that can be used with Swift Package Manager plugins.

## Installation

To dependencies,
```swift
.package(url: "https://github.com/swiftty/swift-project-starter.git", from: "0.1.0")
```

Run swift-project-starter via SwiftPM command plugin.

```shell-session
$ swift package plugin --allow-writing-to-directory . starter init --package-path . --project library
```
