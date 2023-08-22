// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "GoogleInteractiveMediaAds",
    platforms: [
        .iOS(.v11),
        .tvOS(.v12),
    ],
    products: [
        .library(
            name: "GoogleInteractiveMediaAds",
            targets: ["GoogleIMA"])
    ],
    targets: [
        .binaryTarget(
            name: "GoogleIMA_tvOS",
            url: "https://imasdk.googleapis.com/native/downloads/ima-tvos-v4.8.2.zip",
            checksum: "4e5702710cee997e7f1abf6393978eb9575c54b468edc5276b9a4d4d4879cb49"
        ),
        .binaryTarget(
            name: "GoogleIMA_iOS",
            url: "https://imasdk.googleapis.com/native/downloads/ima-ios-v3.19.2.zip",
            checksum: "779ad89d07c343ae4530335159a1094ce6a69300cb06a47a92f65c4e8b1b80f1"
        ),
        .target(
            name: "GoogleIMA",
            dependencies: [
                .target(name: "GoogleIMA_iOS", condition: .when(platforms:[.iOS])),
                .target(name: "GoogleIMA_tvOS", condition: .when(platforms: [.tvOS]))
            ]
        )
    ]
)