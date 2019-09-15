// swift-tools-version:5.0
import PackageDescription

let pkg = Package(
    name: "IsTTY",
    products: [
        .library(name: "IsTTY", targets: ["IsTTY"]),
    ],
    targets: [
        .target(name: "IsTTY", path: ".", sources: ["IsTTY.swift"]),
    ],
    swiftLanguageVersions: [.v5]
)
