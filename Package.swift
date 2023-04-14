// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LayoutKit",
    platforms: [
        .iOS(.v11),
        .tvOS(.v11),
        .watchOS(.v4),
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "LayoutKit",
            targets: ["LayoutKit"]
        )
    ],
    targets: [
        .target(
            name: "LayoutKit",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "LayoutKitTests",
            dependencies: ["LayoutKit"],
            path: "Tests"
        )
    ]
)
