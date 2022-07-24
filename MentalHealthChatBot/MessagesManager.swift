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
    let quesAndAns = QandA()
    init() { subscription() }
    func subscription() {
        $userMessages
            .receive(on: DispatchQueue.main)
            .sink { messages in
            if let message = messages.last {
                Task {
                    let response = await self.getAnswer(message: message.text)
                    let replaceLoadingMessage = Message(id: UUID().uuidString, text: response, received: true, timestamp: Date())
                    guard let first = self.allMessages.first(where: {$0.id == "loading" + message.id }),
                          let index = self.allMessages.firstIndex(of: first) else { return }
                    self.allMessages[index] = replaceLoadingMessage
                }
            }
        }.store(in: &cancellables)
    }

    
    func getAnswer(message: String) async -> String {
        return quesAndAns.answer(message)
    }
}
