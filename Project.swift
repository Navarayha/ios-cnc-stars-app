import ProjectDescription
import ProjectDescriptionHelpers

// MARK: - Project
let project = Project.app(name: "CnCStarsApp",
                          platform: .iOS,
                          externalDependencies: ["JGProgressHUD"],
                          targetDependancies: [],
                          moduleTargets: [
                              // Core
                              makeHomeCoordinatorModule(),
                              makeCommonModule(),
                              makeCommonUIModule(),
                              // Services
                              makeFirebaseAuthServiceModule(),
                              makeMockAuthServiceModule(),
                              // View Controllers
                              makeLoginUIModule(),
                              makePeopleUIModule(),
                              makeProfileUIModule(),
                              makeMeetingsUIModule(),
                          ])

func makeHomeCoordinatorModule() -> Module {
    return Module(name: "HomeCoordinator",
            path: "HomeCoordinator",
            frameworkDependancies: [
                .target(name: "Common"),
                .target(name: "LoginUI"),
                .target(name: "PeopleUI"),
                .target(name: "FirebaseAuthService")
            ],
            exampleDependencies: [
                .target(name: "MockAuthService")
            ],
            frameworkResources: ["Sources/**/*.storyboard", "Resources/**"],
            exampleResources: ["Resources/**"],
            testResources: [])
}

func makeCommonModule() -> Module {
    return Module(name: "Common",
            path: "Common",
            frameworkDependancies: [],
            exampleDependencies: [],
            frameworkResources: ["Sources/**/*.xib"],
            exampleResources: ["Resources/**"],
            testResources: [],
            targets: [.framework])
}

func makeCommonUIModule() -> Module {
    return Module(name: "CommonUI",
            path: "CommonUI",
            frameworkDependancies: [.target(name: "Common")],
            exampleDependencies: [.target(name: "Common")],
            frameworkResources: ["Sources/**/*.storyboard", "Resources/**"],
            exampleResources: ["Resources/**"],
            testResources: [])
}

func makeFirebaseAuthServiceModule() -> Module {
    return Module(name: "FirebaseAuthService",
            path: "Services/FirebaseAuthService",
            frameworkDependancies: [.target(name: "Common")],
            exampleDependencies: [.target(name: "Common")],
            frameworkResources: ["Sources/**/*.storyboard", "Resources/**"],
            exampleResources: ["Resources/**"],
            testResources: [])
}

func makeMockAuthServiceModule() -> Module {
    return Module(name: "MockAuthService",
            path: "Services/MockAuthService",
            frameworkDependancies: [.target(name: "Common")],
            exampleDependencies: [.target(name: "Common")],
            frameworkResources: ["Sources/**/*.storyboard", "Resources/**"],
            exampleResources: ["Resources/**"],
            testResources: [])
}

func makeLoginUIModule() -> Module {
    return Module(name: "LoginUI",
            path: "ViewControllers/LoginUI",
            frameworkDependancies: [.target(name: "Common"), .target(name: "CommonUI")],
            exampleDependencies: [],
            frameworkResources: ["Resources/**"],
            exampleResources: ["Resources/**"],
            testResources: [])
}

func makePeopleUIModule() -> Module {
    return Module(name: "PeopleUI",
            path: "ViewControllers/PeopleUI",
            frameworkDependancies: [.target(name: "Common")],
            exampleDependencies: [.external(name: "JGProgressHUD")],
            frameworkResources: ["Sources/**/*.storyboard", "Resources/**"],
            exampleResources: ["Resources/**"],
            testResources: [])
}

func makeProfileUIModule() -> Module {
    return Module(name: "ProfileUI",
            path: "ViewControllers/ProfileUI",
            frameworkDependancies: [.target(name: "Common")],
            exampleDependencies: [.external(name: "JGProgressHUD")],
            frameworkResources: ["Sources/**/*.storyboard", "Resources/**"],
            exampleResources: ["Resources/**"],
            testResources: [])
}

func makeMeetingsUIModule() -> Module {
    return Module(name: "MeetingsUI",
            path: "ViewControllers/MeetingsUI",
            frameworkDependancies: [.target(name: "Common")],
            exampleDependencies: [.external(name: "JGProgressHUD")],
            frameworkResources: ["Sources/**/*.storyboard", "Resources/**"],
            exampleResources: ["Resources/**"],
            testResources: [])
}




