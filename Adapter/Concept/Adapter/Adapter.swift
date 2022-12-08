//
//  Adapter.swift
//  Adapter
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import Foundation

/// The Adapter makes the Adaptee's interface compatible with the Target's
/// interface.
class Adapter: Target {

    private var adaptee: Adaptee

    init(_ adaptee: Adaptee) {
        self.adaptee = adaptee
    }

    override func request() -> String {
        return "Adapter: (TRANSLATED) " + adaptee.specificRequest().reversed()
    }
}
