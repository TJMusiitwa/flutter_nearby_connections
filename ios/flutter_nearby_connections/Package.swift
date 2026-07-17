// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "flutter_nearby_connections",
    platforms: [
        .iOS("18.0")
    ],
    products: [
        .library(
            name: "flutter-nearby-connections",
            targets: ["flutter_nearby_connections"]
        )
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.2")
    ],
    targets: [
        .target(
            name: "flutter_nearby_connections",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "SwiftyJSON", package: "SwiftyJSON")
            ],
            path: "Sources/flutter_nearby_connections"
        )
    ]
)
