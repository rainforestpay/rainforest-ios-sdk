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
            url: "https://static.rainforestpay.com/tap-to-phone/rainforest-sdk.0.3.0.zip",
            checksum: "1ab653ba29710bc24cc564202c5f572597724dc5ecb1d380710bcab1887a898d"
        ),
        .binaryTarget(
            name: "CloudCommerceFramework",
            url: "https://static.rainforestpay.com/tap-to-phone/cloud-commerce.0.3.0.zip",
            checksum: "1d35ae9b858941a53a61d8a9f27ad421391c9bd7668401c83405e235f48e8729"
        ),
    ]
)

