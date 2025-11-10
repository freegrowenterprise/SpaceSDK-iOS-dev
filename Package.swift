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
            url: "https://github.com/freegrowenterprise/SpaceSDK-iOS-dev/releases/download/dev_0.0.4/GrowSpacePrivateSDK.xcframework.zip",
            checksum: "e8858a6a7009f03557e8f91b4b1e86a2e538b62eea5c701f8f5349db1db5b39e"
        ),
        .testTarget(
            name: "GrowSpaceSDK_DevTests",
            dependencies: ["GrowSpaceSDK_Dev"]
        ),
    ]
)
