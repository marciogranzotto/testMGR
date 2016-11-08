//
//  RootWireframe.swift
//  EitaPAY
//
//  Created by MARCELO GRACIETTI on 07/11/16.
//  Copyright © 2016 Cheesecake Labs. All rights reserved.
//

import UIKit

class RootWireframe { // FIXME: Should be named RootRouter and should implement RootWireframe protocol
    
    func showRootViewController(_ viewController: UIViewController, inWindow window: UIWindow) {
        let navigationController = window.rootViewController as! UINavigationController
        navigationController.viewControllers = [viewController]
    }
}
