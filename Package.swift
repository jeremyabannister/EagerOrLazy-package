// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "EagerOrLazy-package",
    products: [
        .library(
            name: "EagerOrLazy-module",
            targets: ["EagerOrLazy-module"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/jeremyabannister/ValueType-package",
            .upToNextMinor(from: "0.1.6")
        )
    ],
    targets: [
        .target(
            name: "EagerOrLazy-module",
            dependencies: [
                .product(name: "ValueType-module", package: "ValueType-package"),
            ]
        ),
        .testTarget(
            name: "EagerOrLazy-module-tests",
            dependencies: [
                "EagerOrLazy-module",
            ]
        ),
    ]
)
