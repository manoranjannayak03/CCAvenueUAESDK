// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "CCAvenueUAESDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "CCAvenueUAESDK",
            targets: ["CCAvenueUAESDK"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "CCAvenueUAESDK",
            path: "CCAvenueUAESDK.xcframework"
        )
    ]
)
