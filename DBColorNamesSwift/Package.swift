// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DBColorNamesSwift",
    platforms: [
        .macOS(.v13), .iOS(.v16), .tvOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DBColorNamesSwift",
            targets: ["DBColorNamesSwift"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/pkclsoft/UXKit", from: "0.10.3"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DBColorNamesSwift",
            dependencies:  ["UXKit"]
        ),
        .testTarget(
            name: "DBColorNamesSwiftTests",
            dependencies: ["DBColorNamesSwift"]
        ),
    ]
)
