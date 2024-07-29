// swift-tools-version: 5.10

///
import PackageDescription


///
let package = Package(
    name: "EagerOrLazy-package",
    products: [
        
        ///
        .library(
            name: "EagerOrLazy-module",
            targets: ["EagerOrLazy-module"]
        ),
    ],
    dependencies: [
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/ValueType-package",
            "0.1.0" ..< "0.2.0"
        )
    ],
    targets: [
        
        ///
        .target(
            name: "EagerOrLazy-module",
            dependencies: [
                .product(name: "ValueType-module", package: "ValueType-package"),
            ]
        ),
        
        ///
        .testTarget(
            name: "EagerOrLazy-module-tests",
            dependencies: [
                "EagerOrLazy-module",
            ]
        ),
    ]
)
