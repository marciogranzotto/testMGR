//
//  appDependencies.swift
//  EitaPAY
//
//  Created by MARCELO GRACIETTI on 07/11/16.
//  Copyright © 2016 Cheesecake Labs. All rights reserved.
//

import UIKit

class AppDependencies {

    // MARK: Instance Variables
    
    var onboardingRouter: OnboardingRouter
    
    // MARK: Public
    
    init() {
        let rootWireframe = RootWireframe() // FIXME: Should be RootRouter
        onboardingRouter = OnboardingRouter()
        onboardingRouter.rootWireframe = rootWireframe
    }
    func installRootViewControllerIntoWindow(_ window: UIWindow) {
        onboardingRouter.presentOnboardingInterfaceFromWindow(window)
    }

}
