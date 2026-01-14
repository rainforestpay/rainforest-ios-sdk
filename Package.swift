// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RainforestSDK",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "RainforestSDK",
            targets: ["RainforestSDKFramework", "CloudCommerceFramework"]
        ),
    ],
    targets: [
        .target(
            name: "RainforestSDKTarget",
            path: "Sources/RainforestSDK"
        ),
        .binaryTarget(
            name: "RainforestSDKFramework",
            url: "https://static.rainforestpay.com/tap-to-phone/rainforest-sdk.beta-0.1.0.zip",
            checksum: "00ed83ce82ae44189fe92c66bcd7fa28b4c5a1a88f32986d9d8d4e002701128c"
        ),
        .binaryTarget(
            name: "CloudCommerceFramework",
            url: "https://static.rainforestpay.com/tap-to-phone/cloud-commerce.beta-0.1.0.zip",
            checksum: "15543319461a96673de92d980dd873bcff98938c7c6d44f6788946445ae04b73"
        ),
    ]
)
