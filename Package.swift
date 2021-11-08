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
        .package(name:"RKValueTransformers" ,url: "https://github.com/youla-dev/RKValueTransformers", .revision("203a968b9a8f00e23b2c74285f7129081a6fa4a0")),
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
