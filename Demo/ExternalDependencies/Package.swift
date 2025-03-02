// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ExternalDependencies",
    platforms: [
        .iOS(.v16),
        .macOS(.v13),
        .tvOS(.v17)
    ],
    products: [
        .library(
            name: "ExternalDependencies",
            targets: ["ExternalDependencies"]
        )
    ],
    dependencies: [
        .package(path: "../../Passepartout/Packages/PassepartoutKit-Framework"),
        .package(path: "../../Passepartout/Packages/PassepartoutOpenVPNOpenSSL"),
        .package(path: "../../Passepartout/Packages/PassepartoutWireGuardGo")
    ],
    targets: [
        .target(
            name: "ExternalDependencies",
            dependencies: [
                "PassepartoutKit-Framework",
                "PassepartoutOpenVPNOpenSSL",
                "PassepartoutWireGuardGo"
            ]
        ),
        .testTarget(
            name: "ExternalDependenciesTests",
            dependencies: ["ExternalDependencies"]
        )
    ]
)
