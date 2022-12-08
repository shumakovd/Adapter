//
//  Adaptee.swift
//  Adapter
//
//  Created by Shumakov Dmytro on 08.12.2022.
//

import Foundation

/// The Adaptee contains some useful behavior, but its interface is incompatible
/// with the existing client code. The Adaptee needs some adaptation before the
/// client code can use it.
class Adaptee {

    public func specificRequest() -> String {
        return ".eetpadA eht fo roivaheb laicepS"
    }
}
