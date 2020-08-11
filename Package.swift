// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
  name: "DangerSwift",
  products: [
    // Library that contains all of the dependencies.
    .library(name: "DangerDeps", type: .dynamic, targets: ["DangerDependencies"])

  ],
  dependencies: [
    // Danger.
    .package(url: "https://github.com/danger/swift.git", from: "3.3.1"),

    // Danger Plugins.
    .package(url: "https://github.com/f-meloni/danger-swift-xcodesummary.git", from: "1.2.1"),
    .package(url: "https://github.com/f-meloni/danger-swift-coverage.git", from: "1.1.0"),
    .package(url: "https://github.com/JohnSundell/ShellOut.git", from: "2.3.0"),

  ],
  targets: [
    .target(name: "DangerDependencies",
            dependencies: ["Danger", "DangerSwiftCoverage", "DangerXCodeSummary", "ShellOut"],
            path: "DangerDependencies")
  ]
)