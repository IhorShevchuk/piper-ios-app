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

        let voice = AVSpeechSynthesisVoice.speechVoices().first { voiceInArray in
            return voiceInArray.identifier == "com.ihorshevchuk.piperapp.pipertts.pipertts"
        }

        let utterance = AVSpeechUtterance(string: "Тестування голосу Лада, всім привіт! Test Latin chars")
        utterance.voice = voice
        synt.speak(utterance)
    }
}
