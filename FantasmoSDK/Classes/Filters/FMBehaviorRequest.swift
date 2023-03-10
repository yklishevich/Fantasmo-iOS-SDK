//
//  FMBehaviorDirector.swift
//  FantasmoSDK
//
//  Created by lucas kuzma on 4/1/21.
//

import Foundation

public enum FMBehaviorRequest: String {
    case tiltUp = "Tilt your device up"
    case tiltDown = "Tilt your device down"
    case panAround = "Pan around the scene"
    case panSlowly = "Pan more slowly"
}

/// maps filter FMFilterRejectionReason to a remedial user behavior
extension FMBehaviorRequest {
    init(_ rejection : FMFilterRejectionReason) {
        switch rejection {
        case .cameraPitchTooLow:
            self = .tiltUp
        case .cameraPitchTooHigh:
            self = .tiltDown
        case .movingTooFast:
            self = .panSlowly
        case .movingTooLittle:
            self = .panAround
        }
    }
}
