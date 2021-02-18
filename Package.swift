// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPM",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "4.9.1"),
        .package(url: "https://github.com/airbnb/lottie-ios.git", from: "3.1.5"),
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "5.15.6"),
        .package(url: "https://github.com/realm/realm-cocoa.git", from: "10.5.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SPM",
            dependencies: ["Alamofire","Kingfisher" ,"Lottie", "Realm" ,"RealmDatabase"]),
        .testTarget(
            name: "SPMTests",
            dependencies: ["SPM"]),
    ]
)
