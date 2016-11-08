//
//  OnboardingOnboardingPresenter.swift
//  eitapay-ios
//
//  Created by mgracietti on 07/11/2016.
//  Copyright © 2016 Cheesecake Labs. All rights reserved.
//

class OnboardingPresenter: OnboardingModuleInput, OnboardingViewOutput, OnboardingInteractorOutput {

    weak var view: OnboardingViewInput!
    var interactor: OnboardingInteractorInput!
    var router: OnboardingRouterInput!

    func userWantsToLogin() {
        router.presentLoginScreen()
    }
    
}
