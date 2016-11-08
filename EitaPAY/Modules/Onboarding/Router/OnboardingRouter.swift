//
//  OnboardingOnboardingRouter.swift
//  eitapay-ios
//
//  Created by mgracietti on 07/11/2016.
//  Copyright © 2016 Cheesecake Labs. All rights reserved.
//
import UIKit

class OnboardingRouter: OnboardingRouterInput {

    // MARK: Constants
    let storyboardName = "OnboardingStoryboard"
    let thisViewControllerIdentifier = "OnboardingViewControllerID"
    
    // MARK: Instance Variables
    weak var onboardingViewController: OnboardingViewController!
    var onboardingPresenter: OnboardingPresenter!
    var rootWireframe: RootWireframe!
    var loginRouter: LoginRouter!
    
    // MARK: Public
    
    init() {
        let onboardingInteractor = OnboardingInteractor()
        onboardingPresenter = OnboardingPresenter()
        onboardingPresenter.interactor = onboardingInteractor
        onboardingPresenter.router = self
        onboardingInteractor.output = onboardingPresenter
    }
    
    func presentOnboardingInterfaceFromWindow(_ window: UIWindow) {
        onboardingViewController = onboardingViewControllerFromStoryboard()
        onboardingViewController.output = onboardingPresenter
        onboardingPresenter.view = onboardingViewController
        rootWireframe.showRootViewController(onboardingViewController, inWindow: window)
    }
    
    func presentLoginScreen() {
        loginRouter = LoginRouter()
        loginRouter.presentLoginInterfaceFromViewController(onboardingViewController)
    }
    
    
    // MARK: Private

    private func onboardingViewControllerFromStoryboard() -> OnboardingViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: thisViewControllerIdentifier) as! OnboardingViewController
        return viewController
    }
    
}
