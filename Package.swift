// swift-tools-version:5.5
import PackageDescription

let package = Package(
  name: "SetupXcode",
  platforms: [.macOS(.v12)],
  targets: [
    .executableTarget(name: "SetupXcode", dependencies: [])
  ]
)
