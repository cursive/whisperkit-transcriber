// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "WhisperkitTranscriber",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "WhisperkitTranscriber",
            targets: ["WhisperkitTranscriberPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "WhisperkitTranscriberPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/WhisperkitTranscriberPlugin"),
        .testTarget(
            name: "WhisperkitTranscriberPluginTests",
            dependencies: ["WhisperkitTranscriberPlugin"],
            path: "ios/Tests/WhisperkitTranscriberPluginTests")
    ]
)