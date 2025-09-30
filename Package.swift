// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "Boost-Core-SPM",
    products: [
        .library(
            name: "BoostCore",
            targets: ["BoostCore"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/aleksey-golovanov/boost-config-spm.git",
            from: "1.89.0"
        ),
        .package(
            url: "https://github.com/aleksey-golovanov/boost-assert-spm.git",
            from: "1.89.0"
        ),
    ],
    targets: [
        .target(
            name: "BoostCore",
            dependencies: [
                .product(name: "BoostConfig", package: "boost-config-spm"),
                .product(name: "BoostAssert", package: "boost-assert-spm"),
            ],
            path: "Sources/BoostCore",
        )
    ],
    cxxLanguageStandard: .cxx20
)
