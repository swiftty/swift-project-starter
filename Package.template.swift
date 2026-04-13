// swift-tools-version: 6.2.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-project-starter",
    platforms: [
        .macOS(.v15)
    ],
    products: [
        .plugin(name: "swift-project-starter-plugin", targets: ["swift-project-starter-plugin"])
    ],
    targets: [
        .binaryTarget(
            name: "swift-project-starter",
            url: "<url>",
            checksum: "<checksum>"
        ),

        .plugin(
            name: "swift-project-starter-plugin",
            capability: .command(
                intent: .custom(
                    verb: "starter",
                    description: "This command generates a starter file for your project.",
                ),
                permissions: [
                    .writeToPackageDirectory(reason: "This command generates a starter file for your project.")
                ],
            ),
            dependencies: [
                "swift-project-starter"
            ],
        ),
    ],
    swiftLanguageModes: [.v6],
)
