// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "LayoutKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "LayoutKit", targets: ["CommonCore", "LayoutKit"])
    ],
    targets: [
        .target(name: "CommonCore", dependencies: ["GeometryTools", "LayoutExpressions"]),
        .target(name: "GeometryTools"),
        .target(name: "LayoutExpressions", dependencies: ["GeometryTools"]),
        .target(name: "LayoutKit", dependencies: ["CommonCore"])
    ],
    swiftLanguageVersions: [.v5]
)
