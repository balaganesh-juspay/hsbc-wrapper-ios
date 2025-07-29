// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "HSBCPaymentsSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "HSBCPaymentsSDK",
            targets: ["HSBCPaymentsSDKSource", "HSBCPaymentsSDKDependencies"]
        )
    ],
    dependencies: [
        .package(name: "HyperSDK", url: "https://github.com/juspay/hypersdk-ios.git", .exact("2.2.4")),
    ],
    targets: [
        .target(
            name: "HSBCPaymentsSDKSource",
            path: "Sources/HSBCPaymentsSDK"
        ),
        .target(
            name: "HSBCPaymentsSDKDependencies",
            dependencies: [
                .product(name: "HyperSDK", package: "HyperSDK")
            ]
        )
    ]
)