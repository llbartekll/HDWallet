// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HDWallet",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "HDWallet",
            targets: ["HDWallet"]),
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift", from: "1.0.0"),
        .package(name: "secp256k1", url: "https://github.com/GigaBitcoin/secp256k1.swift", from: "0.2.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "HDWallet",
            dependencies: ["CryptoSwift",
                           "secp256k1"]),
        .testTarget(
            name: "HDWalletTests",
            dependencies: ["HDWallet"]),
    ]
)
