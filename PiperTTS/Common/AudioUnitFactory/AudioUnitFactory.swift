//
//  AudioUnitFactory.swift
//  pipertts
//
//  Created by Ihor Shevchuk on 27.12.2023.
//

import CoreAudioKit
import os

public class AudioUnitFactory: NSObject, AUAudioUnitFactory {
    var auAudioUnit: AUAudioUnit?
    public func beginRequest(with context: NSExtensionContext) {

    }

    @objc
    public func createAudioUnit(with componentDescription: AudioComponentDescription) throws -> AUAudioUnit {
        auAudioUnit = try PiperttsAudioUnit(componentDescription: componentDescription, options: [])

        guard let audioUnit = auAudioUnit as? PiperttsAudioUnit else {
            fatalError("Failed to create pipertts")
        }

        return audioUnit
    }
    
}
