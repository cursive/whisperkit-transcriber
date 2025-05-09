// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "WhisperkitTranscriber",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "WhisperkitTranscriber",
            targets: ["WhisperkitTranscriberPlugin"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0"),
        .package(url: "https://github.com/argmaxinc/WhisperKit.git", from: "0.9.0"),
    ],
    targets: [
        .target(
            name: "WhisperkitTranscriberPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm"),
                "WhisperKit"
            ],
            path: "ios/Sources/WhisperkitTranscriberPlugin",
            resources: [
                .copy("ggml-base.en.bin")
            ]
        ),
        .testTarget(
            name: "WhisperkitTranscriberPluginTests",
            dependencies: ["WhisperkitTranscriberPlugin"],
            path: "ios/Tests/WhisperkitTranscriberPluginTests"
        )
    ]
)
