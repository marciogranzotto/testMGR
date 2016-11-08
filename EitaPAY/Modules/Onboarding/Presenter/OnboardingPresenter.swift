//
//  OnboardingOnboardingPresenter.swift
//  eitapay-ios
//
//  Created by mgracietti on 07/11/2016.
//  Copyright © 2016 Cheesecake Labs. All rights reserved.
//

class OnboardingPresenter: OnboardingModuleInput, OnboardingViewOutput, OnboardingInteractorOutput {

    weak var view: OnboardingViewInput!         // FIXME: Should be optional
    var interactor: OnboardingInteractorInput!  // FIXME: Should be optional
    var router: OnboardingRouterInput!          // FIXME: Should be optional

    func userWantsToLogin() {
        router.presentLoginScreen()
    }
    
}
