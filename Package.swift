// swift-tools-version:5.5

import PackageDescription
let package = Package(
    name: "ISO8601DateFormatterValueTransformer",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "ISO8601DateFormatterValueTransformer",
            targets: ["ISO8601DateFormatterValueTransformer"])
    ],
    dependencies: [
        .package(name:"RKValueTransformers" ,url: "https://github.com/youla-dev/RKValueTransformers", .revision("82e881378ffd746b168ffbdb7deab8b8c1c4603a")),
    ],
    targets: [
        .target(
            name: "ISO8601DateFormatterValueTransformer",
            dependencies: [
                .byName(name: "RKValueTransformers"),
            ],
            path: "Code/",
            publicHeadersPath: ""
        ),
    ])
