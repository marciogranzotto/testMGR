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
    var output: OnboardingViewOutput!    
    
    @IBAction func enterButton(_ sender: UIButton) {
        output.userWantsToLogin()
    }
    
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    // MARK: OnboardingViewInput
    func setupInitialState() {
    }
}
