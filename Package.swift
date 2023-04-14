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

let package = Package(
    name: "LayoutKit",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(name: "LayoutKit", targets: ["LayoutKit"]),
        .library(name: "GeometryTools", targets: ["GeometryTools"]),
        .library(name: "LayoutExpressions", targets: ["LayoutExpressions"]),
        .library(name: "CommonCore", targets: ["CommonCore"])
    ],
    targets: [
        .target(
            name: "LayoutKit",
            dependencies: ["GeometryTools", "LayoutExpressions"],
            path: "Sources/LayoutKit"
        ),
        .target(
            name: "GeometryTools",
            dependencies: [],
            path: "Sources/GeometryTools"
        ),
        .target(
            name: "LayoutExpressions",
            dependencies: ["GeometryTools"],
            path: "Sources/LayoutExpressions"
        ),
        .target(
            name: "CommonCore",
            dependencies: ["LayoutKit"],
            path: "Sources/CommonCore"
        ),
        .testTarget(
            name: "LayoutKitTests",
            dependencies: ["LayoutKit"],
            path: "Tests/LayoutKitTests"
        ),
        .testTarget(
            name: "GeometryToolsTests",
            dependencies: ["GeometryTools"],
            path: "Tests/GeometryToolsTests"
        ),
        .testTarget(
            name: "LayoutExpressionsTests",
            dependencies: ["LayoutExpressions"],
            path: "Tests/LayoutExpressionsTests"
        ),
        .testTarget(
            name: "CommonCoreTests",
            dependencies: ["CommonCore"],
            path: "Tests/CommonCoreTests"
        )
    ]
)
