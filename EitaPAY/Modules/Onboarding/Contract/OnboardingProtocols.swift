//
//  OnboardingProtocols.swift
//  EitaPAY
//
//  Created by Marcio Granzotto Rodrigues on 08/11/16.
//  Copyright © 2016 Cheesecake Labs. All rights reserved.
//

import Foundation

// MARK: View

protocol OnboardingViewOutput { // FIXME: You can call it OnboardingPresentation
    
    /**
     @author mgracietti
     Notify presenter that view is ready
     */
    
    func userWantsToLogin() // FIXME: I think the function names should be more view-centric, like "onLoginButtonClicked". The view shouldn't know what the user wants by clicking the button, that's the job of the Presenter
}

protocol OnboardingViewInput: class {   // FIXME: You can call it just OnboardingView
    
    /**
     @author mgracietti
     Setup initial state of the view
     */
    
    func setupInitialState()
}

// MARK: Interactor

protocol OnboardingInteractorInput {    // FIXME: I call it OnboardingUseCase, cause is where all the busissness logic happens
}

protocol OnboardingInteractorOutput: class {
}

// MARK: Presenter

protocol OnboardingModuleInput: class { // FIXME: What is the responsability of this protocol?
}

// MARK: Router

protocol OnboardingRouterInput { // FIXME: why Input?
    func presentLoginScreen()
}
