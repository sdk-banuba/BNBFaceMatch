// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.17.2-5-gf3828971b9"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.17.2-5-gf3828971b9/BNBFaceMatch.zip",
            checksum: "6515e5e2b3a52799fc9fa3eb608bd3271952e8390e2e0de38f19f8b25ad39e95"
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
