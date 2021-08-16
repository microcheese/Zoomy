// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "Zoomy",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(name: "Zoomy", targets: ["Zoomy"])
    ],
    dependencies: [
        .package(url: "https://github.com/microcheese/InjectableLoggers.git", from: "2.1.4"),
    ],
    targets: [
        .target(
            name: "Zoomy",
            dependencies: [.byName(name: "InjectableLoggers")],
            path: "Zoomy"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
