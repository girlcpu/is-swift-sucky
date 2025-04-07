// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-sucky",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        // ok maybe i need to change this
        // trying to change it, confirmed '.executable' with same name/targets params
        // and it just inserted the whole snippet for a new .executable? what happened
        // to smart replacing? pointless to manually delete the rest of the template :(
        .executable(name: String, targets: [String])(
            name: "swift-sucky",
            targets: ["swift-sucky"])
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "swift-sucky"),
        // im not writing unit tests for this how do i make this not generate
        .testTarget(
            name: "swift-suckyTests",
            dependencies: ["swift-sucky"]
        ),
    ]
)
