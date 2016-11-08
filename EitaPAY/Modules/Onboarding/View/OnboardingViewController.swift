//
//  OnboardingOnboardingViewController.swift
//  eitapay-ios
//
//  Created by mgracietti on 07/11/2016.
//  Copyright © 2016 Cheesecake Labs. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController, OnboardingViewInput {

    // MARK: Instance Variables
    var output: OnboardingViewOutput!   // FIXME: call it presenter for readability. Should be optional for safety
    
    @IBAction func enterButton(_ sender: UIButton) {
        output.userWantsToLogin() // FIXME: presenter?.onEnterButtonClicked()
    }
    
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    // MARK: OnboardingViewInput
    func setupInitialState() {
    }
}
