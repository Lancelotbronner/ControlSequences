// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "ANSI Sequences",
	products: [
		.library(
			name: "ControlSequences",
			targets: ["ControlSequences", "LegacyControlSequences"]
		),
	],
	targets: [

		.target(
			name: "ControlSequences",
			path: "Sources/Sequences"),

		.target(
			name: "LegacyControlSequences",
			dependencies: ["ControlSequences"],
			path: "Sources/Legacy"),
		
		.testTarget(
			name: "TerminalTests",
			dependencies: ["LegacyControlSequences", "ControlSequences"]),
	]
)
