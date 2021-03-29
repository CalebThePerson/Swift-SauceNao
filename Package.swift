// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Swift-SauceNao",
    platforms:[
        .macOS(.v10_12),
        .iOS(.v10),
        .tvOS(.v10),
        .watchOS(.v3)
    ], products: [
        .library(
            name: "Swift-SauceNao",
            targets: ["Swift-SauceNao"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.2.0"),
    ],
    targets: [
        .target(
            name: "Swift-SauceNao",
            dependencies: ["Alamofire"]),
        .testTarget(
            name: "Swift-SauceNaoTests",
            dependencies: ["Swift-SauceNao"]),
    ]
)
