//
//  MessagesManager.swift
//  MentalHealthChatBot
//
//  Created by Paul Ancajima on 7/23/22.
//

import Foundation
import SwiftUI
import Combine

class MessagesManager: ObservableObject {
    @Published var allMessages = [Message]()
    @Published var userMessages = [Message]()
    var cancellables = Set<AnyCancellable>()
    init() { subscription() }
    func subscription() {
        $userMessages.sink { messages in
            if let message = messages.last?.text {
                let response = QandA().answer(message)
                self.allMessages.append(Message(id: UUID().uuidString, text: response, received: true, timestamp: Date()))
            }
        }.store(in: &cancellables)
    }
}
