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
            url: "https://github.com/swiftty/swift-project-starter/releases/download/0.2.0/swift-project-starter.artifactbundle.zip",
            checksum: "386855ded5af248a99698244b42c48199a34e648710e272485d4313bbed183b6"
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
