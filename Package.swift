// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "LayoutKit",
    platforms: [
        .iOS(.v12)
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
            path: "Sources"
        )
    ],
    swiftLanguageVersions: [.v5]
)
