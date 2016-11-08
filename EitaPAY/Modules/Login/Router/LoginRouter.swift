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
    
    weak var loginViewController: LoginViewController!
    var loginPresenter: LoginPresenter!
    
    // MARK: Public
    
    init() {
        loginPresenter = LoginPresenter()
    }
    
    func presentLoginInterfaceFromViewController(_ controller: UIViewController) {
        loginViewController = loginViewControllerFromStoryboard()
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

