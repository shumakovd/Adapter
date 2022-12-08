//
//  Client.swift
//  Adapter
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import Foundation

/// The client code supports all classes that follow the Target interface.
class Client {
    // ...
    static func someClientCode(target: Target) {
        print(target.request())
    }
    // ...
}
