//
//  LoginLoginPresenter.swift
//  eitapay-ios
//
//  Created by mgracietti on 07/11/2016.
//  Copyright © 2016 Cheesecake Labs. All rights reserved.
//

class LoginPresenter: LoginModuleInput, LoginViewOutput, LoginInteractorOutput {

    weak var view: LoginViewInput!  // FIXME: Should be optional
    var interactor: LoginInteractorInput!   // FIXME: Should be optional
    var router: LoginRouterInput!   // FIXME: Should be optional

    func viewIsReady() {    //FIXME: Should be named onViewDidLoad. In some cases you'll need to show stuff on viewDidAppear, or viewWillAppear, so the name of this function should be very straigt forward

    }
}
