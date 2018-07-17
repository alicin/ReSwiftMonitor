//
//  AppDelegate.swift
//  ReSwiftMonitor+Sample
//
//  Created by 大澤卓也 on 2018/02/02.
//  Copyright © 2018年 Takuya Ohsawa. All rights reserved.
//

import UIKit
import ReSwift
import ReSwiftMonitor

var middleware: [Middleware<AppState>] = {
    let monitorMiddleware = MonitorMiddleware.make(configuration: Configuration())
    let loggingMiddleware = LoggingMiddleware.make(prefix: "[ReSwift]")
    return [monitorMiddleware, loggingMiddleware]
}()

let store = Store<AppState>(reducer: AppState.reducer(), state: AppState(), middleware: middleware)

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        return true
    }
}
