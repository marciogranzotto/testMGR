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
    // FIXME: On my project all the constants are on a Constant class that has several enums, so you would call Constants.Storyboard.onBoarding . It makes it easier to reuse the constants on other files
    let storyboardName = "OnboardingStoryboard"
    let thisViewControllerIdentifier = "OnboardingViewControllerID"
    
    // MARK: Instance Variables
    // FIXME: You should only keep the instance of what you need. I just keep the viewController, but as a generic UIViewController, not the specific class. Also make all optional, specially the weak ones.
    weak var onboardingViewController: OnboardingViewController! // FIXME: Change it to `weak var viewController: UIViewController?`
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
        loginRouter = LoginRouter() // FIXME: You don't need to keep that instance. Just do a `let loginRouter = LoginRouter()` and remove the property from the class
        loginRouter.presentLoginInterfaceFromViewController(onboardingViewController)
    }
    
    
    // MARK: Private

    private func onboardingViewControllerFromStoryboard() -> OnboardingViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: thisViewControllerIdentifier) as! OnboardingViewController
        return viewController
    }
    
}
