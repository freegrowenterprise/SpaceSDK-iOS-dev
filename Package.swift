// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GrowSpaceSDK_Dev",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "GrowSpaceSDK_Dev",
            targets: ["GrowSpaceSDK_Dev"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "GrowSpaceSDK_Dev",
            dependencies: ["GrowSpacePrivateSDK"]
        ),
        
        .binaryTarget(
            name: "GrowSpacePrivateSDK",
            url: "https://github.com/freegrowenterprise/SpaceSDK-iOS-dev/releases/download/dev_0.0.9/GrowSpacePrivateSDK.xcframework.zip",
            checksum: "87a77dea3d3ff2fca6bc5ef418684ee65233e63865cec303c81b248dd4f1a55c"
        ),
        .testTarget(
            name: "GrowSpaceSDK_DevTests",
            dependencies: ["GrowSpaceSDK_Dev"]
        ),
    ]
)
