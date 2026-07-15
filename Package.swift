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
            url: "https://static.rainforestpay.com/tap-to-phone/rainforest-sdk.0.5.1.zip",
            checksum: "1b16d5da83e6620ea7773cc1c5bdf477f508fe54bdbb6a411b1c681963a43db0"
        ),
        .binaryTarget(
            name: "CloudCommerceFramework",
            url: "https://static.rainforestpay.com/tap-to-phone/cloud-commerce.0.5.1.zip",
            checksum: "4aac8455f7ef5f31f03ee71f09a69d2f71620d65efc125c67261ad75f21b9a34"
        ),
    ]
)

