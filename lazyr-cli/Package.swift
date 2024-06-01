// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LazyrClient",
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.6.0"),
        .package(url: "https://github.com/grpc/grpc-swift.git", from: "1.23.0"),
        .package(path: "../modules/wayout/wayout-lib"),
        .package(path: "../lazyr-lib"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "lazyr-cli",
            dependencies: [
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                .product(name: "GRPC", package: "grpc-swift"),
                .product(name: "WayoutLib", package: "wayout-lib"),
                .product(name: "LazyrLib", package: "lazyr-lib"),
            ],
            path: "Sources"),
    ]
)