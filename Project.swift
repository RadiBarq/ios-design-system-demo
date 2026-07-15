import ProjectDescription

let project = Project(
    name: "DesignSystemDemo",
    packages: [
        .package(path: "DesignSystem")
    ],
    targets: [
        .target(
            name: "DemoApp",
            destinations: .iOS,
            product: .app,
            bundleId: "com.ziina.design-system-demo",
            deploymentTargets: .iOS("16.0"),
            infoPlist: .extendingDefault(with: [
                "UILaunchScreen": [:]
            ]),
            sources: ["DemoApp/Sources/**"],
            dependencies: [
                .package(product: "DesignSystem")
            ]
        )
    ]
)
