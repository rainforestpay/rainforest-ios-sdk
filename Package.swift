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
            url: "https://static.rainforestpay.com/tap-to-phone/rainforest-sdk.0.5.0.zip",
            checksum: "1ac0df127c9e3aab73e00839e073b97f3bb1d70ed0e2ff9d71b61313f4b99a32"
        ),
        .binaryTarget(
            name: "CloudCommerceFramework",
            url: "https://static.rainforestpay.com/tap-to-phone/cloud-commerce.0.5.0.zip",
            checksum: "2a864b826b79ef593395670dbeb8337a8670053f67d28ec09a55d49ee3e88084"
        ),
    ]
)

