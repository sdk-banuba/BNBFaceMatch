// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.17.5"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.17.5/BNBFaceMatch.zip",
            checksum: "6f225b1d24a82ddb77031bd0b988d2d9c0ec3f537da9b94857644b871657b7e6"
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
