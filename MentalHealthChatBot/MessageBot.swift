//
//  MessageBot.swift
//  MentalHealthChatBot
//
//  Created by Paul Ancajima on 7/23/22.
//

import Foundation
import SwiftUI
import Combine

class MessageBot {
    var messagesManager: MessagesManager
    var cancellables = Set<AnyCancellable>()
    init(messagesManager: MessagesManager) {
        self.messagesManager = messagesManager
    }
    
    
}
