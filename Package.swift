// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "TerminalControl",
	products: [
		.library(
			name: "TerminalControl",
			targets: ["TerminalControl", "TerminalControlLegacy"]
		),
	],
	targets: [

		.target(
			name: "TerminalControl",
			path: "Sources/Sequences"),

		.target(
			name: "TerminalControlLegacy",
			dependencies: ["TerminalControl"],
			path: "Sources/Legacy"),
		
		.testTarget(
			name: "TerminalTests",
			dependencies: ["TerminalControlLegacy", "TerminalControl"]),
	]
)
