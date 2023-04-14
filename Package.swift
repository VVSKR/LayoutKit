// swift-tools-version:5.0
import PackageDescription

// let package = Package(
//     name: "LayoutKit",
//     platforms: [
//         .iOS(.v13)
//     ],
//     products: [
//         .library(name: "LayoutKit", targets: ["CommonCore", "LayoutKit"])
//     ],
//     targets: [
//         .target(name: "CommonCore", dependencies: ["GeometryTools", "LayoutExpressions"]),
//         .target(name: "GeometryTools"),
//         .target(name: "LayoutExpressions", dependencies: ["GeometryTools"]),
//         .target(name: "LayoutKit", dependencies: ["CommonCore"])
//     ],
//     swiftLanguageVersions: [.v5]
// )

// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "LayoutKit",
    platforms: [
        .iOS(.v11),
        .tvOS(.v11),
        .watchOS(.v4),
        .macOS(.v10_12)
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
