//
//  AppDelegate.swift
//  GifSearcher
//
//  Created by Christopher Tava on 9/19/15.
//  Copyright © 2015 Multitouchproducts. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    GifSearchService().search()
    return true
  }

}

