// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Stack",
    products: [
        .library(name: "Stack", targets: ["Stack"]),
    ],
    dependencies: [
        .package(name: "EBCLinkedList",
                 url: "https://github.com/goto10/EBCLinkedList.git",
                 from: "1.0.0")
    ],
    targets: [
        .target(name: "Stack", dependencies: ["EBCLinkedList"]),
        .testTarget(name: "StackTests", dependencies: ["Stack"]),
    ]
)
