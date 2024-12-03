// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-218-g91528edbf1"

let package = Package(
    name: "BNBFaceMatch",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBFaceMatch",
            targets: [
                "BNBFaceMatch",
                "BNBFaceMatch_BNBSdkCore",
                "BNBFaceMatch_BNBFaceTracker"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBFaceTracker.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBFaceMatch",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-218-g91528edbf1/BNBFaceMatch.zip",
            checksum: "5b48299fd38d3b06c2c9c7bac2a7217f210f17aab72b411fe1e832ddb14cfa57"
        ),
        .target(
            name: "BNBFaceMatch_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBFaceMatch_BNBFaceTracker",
            dependencies: [
                .product(
                    name: "BNBFaceTracker",
                    package: "BNBFaceTracker"
                ),
            ]
        ),
    ]
)
