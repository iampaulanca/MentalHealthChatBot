//
//  MainView.swift
//  MentalHealthChatBot
//
//  Created by Paul Ancajima on 7/22/22.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var messagesManager = MessagesManager()
    let qa = QandA()
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                
                ScrollViewReader { proxy in
                    ScrollView {
                        ForEach(messagesManager.allMessages, id: \.id) { message in
                            MessageBubble(message: message)
                        }
                    }
                    .padding(.top, 10)
                    .background(.white)
                    .cornerRadius(30, corners: [.topLeft, .topRight]) 
                    .onChange(of: messagesManager.allMessages.count) { last in
                        withAnimation {
                            proxy.scrollTo(messagesManager.allMessages[last-1].id, anchor: .bottom)
                        }
                    }
                }
            }
            .background(.blue)
            
            MessageField(messageManager: messagesManager)
                
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


// Extension for adding rounded corners to specific corners
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}

// Custom RoundedCorner shape used for cornerRadius extension above
struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

