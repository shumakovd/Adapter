//
//  FacebookAuthSDK.swift
//  Adapter
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import UIKit
import Foundation

class FacebookAuthSDK {

    func presentAuthFlow(from viewController: UIViewController) {
        /// Call SDK methods and pass a view controller
        print("Facebook WebView has been shown.")
    }
}

extension FacebookAuthSDK: AuthService {
    /// This extension just tells a compiler that both SDKs have the same
    /// interface.
}
