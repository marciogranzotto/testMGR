//
//  RootWireframe.swift
//  EitaPAY
//
//  Created by MARCELO GRACIETTI on 07/11/16.
//  Copyright © 2016 Cheesecake Labs. All rights reserved.
//

import UIKit

class RootWireframe {
    
    func showRootViewController(_ viewController: UIViewController, inWindow window: UIWindow) {
        let navigationController = window.rootViewController as! UINavigationController
        navigationController.viewControllers = [viewController]
    }
}
