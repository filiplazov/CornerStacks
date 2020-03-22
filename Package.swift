// swift-tools-version:5.1

//  CornerStacks
//  Copyright (c) Filip Lazov 2020
//  MIT license - see LICENSE file for more info

import PackageDescription

let package = Package(
  name: "CornerStacks",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6)
  ],
  products: [
    .library(
      name: "CornerStacks",
      targets: ["CornerStacks"]),
  ],
  dependencies: [],
  targets: [
    .target(
      name: "CornerStacks",
      dependencies: []),
  ]
)
