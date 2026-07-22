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
            url: "https://static.rainforestpay.com/tap-to-phone/rainforest-sdk.0.5.2.zip",
            checksum: "184bffcd1578b0987f0925f49e1c6207ceaaae1a535e861af6bc35ecf742705c"
        ),
        .binaryTarget(
            name: "CloudCommerceFramework",
            url: "https://static.rainforestpay.com/tap-to-phone/cloud-commerce.0.5.2.zip",
            checksum: "700d36a1d3f9f6542a2793de0aa270fe3f3ba277cf32c1823e30e815a58292da"
        ),
    ]
)

