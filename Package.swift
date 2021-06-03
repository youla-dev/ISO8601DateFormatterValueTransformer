// swift-tools-version:5.3

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
        .package(name:"RKValueTransformers" ,url: "https://github.com/youla-dev/RKValueTransformers", .branch("xcframework")),
        .package(name:"ISO8601DateFormatter" ,url: "https://github.com/youla-dev/iso-8601-date-formatter", .branch("xcframework")),
    ],
    targets: [
        .target(
            name: "ISO8601DateFormatterValueTransformer",
            dependencies: [
                .byName(name: "RKValueTransformers"),
                .byName(name: "ISO8601DateFormatter"),
            ],
            path: "Code/"
        ),
    ])
