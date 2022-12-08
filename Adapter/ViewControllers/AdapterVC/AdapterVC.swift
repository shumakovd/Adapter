//
//  AdapterVC.swift
//  Adapter
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import UIKit
import Foundation

/// Adapter Design Pattern
///
/// Intent: Convert the interface of a class into the interface clients expect.
/// Adapter lets classes work together that couldn't work otherwise because of
/// incompatible interfaces.

class AdapterVC: UIViewController {
    
    // MARK: - IBOutlets
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        testAdapterConceptual()
        
    }
    
    // MARK: - Methods
    
    func testAdapterConceptual() {
        print("Client: I can work just fine with the Target objects:")
        Client.someClientCode(target: Target())
        
        let adaptee = Adaptee()
        print("Client: The Adaptee class has a weird interface. See, I don't understand it:")
        print("Adaptee: " + adaptee.specificRequest())
        
        print("Client: But I can work with it via the Adapter:")
        Client.someClientCode(target: Adapter(adaptee))
    }
    
    /// Example. Let's assume that our app perfectly works with Facebook
    /// authorization. However, users ask you to add sign in via Twitter.
    ///
    /// Unfortunately, Twitter SDK has a different authorization method.
    ///
    /// Firstly, you have to create the new protocol 'AuthService' and insert
    /// the authorization method of Facebook SDK.
    ///
    /// Secondly, write an extension for Twitter SDK and implement methods of
    /// AuthService protocol, just a simple redirect.
    ///
    /// Thirdly, write an extension for Facebook SDK. You should not write any
    /// code at this point as methods already implemented by Facebook SDK.
    ///
    /// It just tells a compiler that both SDKs have the same interface.
    
    func testAdapterRealWorld() {
        
        print("Starting an authorization via Facebook")
        startAuthorization(with: FacebookAuthSDK())
        
        print("Starting an authorization via Twitter.")
        startAuthorization(with: TwitterAuthSDK())
    }
    
    func startAuthorization(with service: AuthService) {
        
        /// The current top view controller of the app
        let topViewController = UIViewController()
        
        service.presentAuthFlow(from: topViewController)
    }
}
