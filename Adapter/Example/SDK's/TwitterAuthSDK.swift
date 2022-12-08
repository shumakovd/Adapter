//
//  TwitterAuthSDK.swift
//  Adapter
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import UIKit
import Foundation

class TwitterAuthSDK {

    func startAuthorization(with viewController: UIViewController) {
        /// Call SDK methods and pass a view controller
        print("Twitter WebView has been shown. Users will be happy :)")
    }
}

extension TwitterAuthSDK: AuthService {

    /// This is an adapter
    ///
    /// Yeah, we are able to not create another class and just extend an
    /// existing one

    func presentAuthFlow(from viewController: UIViewController) {
        print("The Adapter is called! Redirecting to the original method...")
        self.startAuthorization(with: viewController)
    }
}
