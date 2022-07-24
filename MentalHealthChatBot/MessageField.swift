//
//  MessageField.swift
//  ChatApp
//
//  Created by Stephanie Diep on 2022-01-11.
//

import SwiftUI

struct MessageField: View {
    @State var message = ""
    var messageManager: MessagesManager
    
    var body: some View {
        HStack {
            CustomTextField(placeholder: Text("Enter your message here"), text: $message, commit: {
                let uuid = UUID().uuidString
                let message = Message(id: uuid, text: message, received: false, timestamp: Date())
                performQuery(message: message) {
                    messageManager.userMessages.append(message)
                }
                self.message = ""
            })
            .frame(height: 52)
            .disableAutocorrection(true)
            Button {
                let uuid = UUID().uuidString
                let message = Message(id: uuid, text: message, received: false, timestamp: Date())
                performQuery(message: message) {
                    messageManager.userMessages.append(message)
                }
                self.message = ""
            } label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(cyberBlue2)
                    .cornerRadius(50)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color.init(uiColor: .lightGray))
        .cornerRadius(50)
        .padding()
    }
    
    func performQuery(message: Message, completion: @escaping() -> ()) {
        DispatchQueue.main.async {
            messageManager.allMessages.append(message)
            messageManager.allMessages.append(Message(id: "loading" + message.id, text: "...", received: true, timestamp: Date()))
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(300)) {
            completion()
        }
    }
    
}

//struct MessageField_Previews: PreviewProvider {
//    static var previews: some View {
//        MessageField(messages: )
//    }
//}

struct CustomTextField: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }

    var body: some View {
        ZStack(alignment: .leading) {
            // If text is empty, show the placeholder on top of the TextField
            if text.isEmpty {
                placeholder
                .opacity(0.5)
            }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
}
