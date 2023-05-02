// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "LayoutKit",
    platforms: [
        .iOS(.v11)
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
        )
    ]
)
