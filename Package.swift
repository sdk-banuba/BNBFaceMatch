// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.9.1-86-gb002ed1e38"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.9.1-86-gb002ed1e38/BNBFaceMatch.zip",
            checksum: "884634d5a9ef1c3c07e77c86ed2951732c5d68dac8a9f88512bc854fc208c458"
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
