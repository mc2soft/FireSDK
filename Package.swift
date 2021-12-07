// swift-tools-version:5.5
import PackageDescription

let package = Package(
	name: "FireSDK",
	platforms: [ .iOS( .v11 ), .tvOS( .v11 ), .macOS( .v10_14 ) ],
	products: [
		.library( name: "FireSDK", targets: ["FireSDK"] ),
	],
	dependencies: [
		.package(
			name: "SwiftProtobuf",
			url: "https://github.com/apple/swift-protobuf.git",
			from: "1.0.0"
		),
	],
	targets: [
		.target(
			name: "FireSDK",
			dependencies: ["SwiftProtobuf"],
			path: "sdk",
			exclude: ["Info.plist"]
		),
	],
	swiftLanguageVersions: [ .v5 ]
)

