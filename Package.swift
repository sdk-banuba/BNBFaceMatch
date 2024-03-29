// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.11.1-71-g826381c83"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.11.1-71-g826381c83/BNBFaceMatch.zip",
            checksum: "1971fc4e450c99ade5372930705051db0ad5e634bd1c89a5168477c28b984181"
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
