//
//  LoginLoginRouter.swift
//  eitapay-ios
//
//  Created by mgracietti on 07/11/2016.
//  Copyright © 2016 Cheesecake Labs. All rights reserved.
//

import UIKit

class LoginRouter: LoginRouterInput {

    
    // MARK: Constants
    
    let storyboardName = "LoginStoryboard"
    let thisViewControllerIdentifier = "LoginViewControllerID"
    
    // MARK: Instance Variables
    
    weak var loginViewController: LoginViewController! // FIXME: Change it to `weak var viewController: UIViewController?`
    var loginPresenter: LoginPresenter! // FIXME: Remove this line, you don't need to keep the reference
    
    // MARK: Public
    
    init() {
        loginPresenter = LoginPresenter() // FIXME: You don't need to instanciate it on init
    }
    
    func presentLoginInterfaceFromViewController(_ controller: UIViewController) {
        loginViewController = loginViewControllerFromStoryboard()
        // FIXME: you can do `let loginPresenter = LoginPresenter()` in here
        loginViewController.output = loginPresenter
        loginPresenter.view = loginViewController
        loginPresenter.router = self
        controller.navigationController!.pushViewController(loginViewController, animated: true)
    }
    
    // MARK: Private
    
    private func loginViewControllerFromStoryboard() -> LoginViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: thisViewControllerIdentifier) as! LoginViewController
        return viewController
    }

}

