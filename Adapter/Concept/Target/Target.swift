//
//  Target.swift
//  Adapter
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import Foundation

/// The Target defines the domain-specific interface used by the client code.
class Target {

    func request() -> String {
        return "Target: The default target's behavior."
    }
}
