//
//  Message.swift
//  appChatGPT
//
//  Created by Mikael Rodrigues on 13/06/23.
//

import Foundation

enum TypeMessage {
    case user
    case chatGPT
}

struct Message {
    var message: String
    var typeMessage: TypeMessage
}
