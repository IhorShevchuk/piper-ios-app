//
//  piperDemo.swift
//  piperapp
//
//  Created by Ihor Shevchuk on 22.11.2023.
//

import Foundation
import AVFoundation

class PiperDemo: NSObject {
    static let shared = PiperDemo()
    var synt = AVSpeechSynthesizer()

    override init() {
        super.init()
    }

    func doJob() {

        let voice = AVSpeechSynthesisVoice.speechVoices().first { v in
            return v.identifier == "com.ihorshevchuk.piperapp.pipertts.pipertts"
        }

        let ut = AVSpeechUtterance(string: "Тестування голосу Лада, всім привіт!")
        ut.voice = voice
        synt.speak(ut)
    }
}

