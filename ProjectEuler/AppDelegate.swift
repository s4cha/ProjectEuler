//
//  AppDelegate.swift
//  ProjectEuler
//
//  Created by Sacha DSO on 07/11/2017.
//  Copyright © 2017 sachadso. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let solutions:[Solution] = [Solution1(), Solution2(), Solution3()]
        solutions.forEach { print($0.run()) }
        return true
    }
}

