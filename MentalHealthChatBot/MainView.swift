//
//  MainView.swift
//  MentalHealthChatBot
//
//  Created by Paul Ancajima on 7/22/22.
//

import SwiftUI

let cyberGreen = Color(uiColor: UIColor(red: 0.00, green: 1.00, blue: 0.62, alpha: 1.00))
let cyberPurple = Color(uiColor: UIColor(red: 0.84, green: 0.00, blue: 1.00, alpha: 1.00))
let cyberPurple2 = Color(uiColor: UIColor(red: 0.45, green: 0.00, blue: 1.00, alpha: 1.00))
let cyberMagenta = Color(uiColor: UIColor(red: 1.00, green: 0.02, blue: 0.47, alpha: 1.00))
let cyberBlue = Color(uiColor:UIColor(red: 0.00, green: 0.12, blue: 1.00, alpha: 1.00))
let cyberBlue2 = Color(uiColor: UIColor(red: 0.00, green: 0.62, blue: 1.00, alpha: 1.00))
let nightSky = Color(uiColor: UIColor(red: 0.04, green: 0.06, blue: 0.15, alpha: 1.00))
let nightSky2 = Color(uiColor: UIColor(red: 0.21, green: 0.28, blue: 0.37, alpha: 1.00))

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
                    .background(
                        LinearGradient(gradient: Gradient(colors: [nightSky, nightSky2]), startPoint: .leading, endPoint: .trailing)
                    )
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                    .onChange(of: messagesManager.allMessages.count) { last in
                        withAnimation {
                            proxy.scrollTo(messagesManager.allMessages[last-1].id, anchor: .bottom)
                        }
                    }
                }
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [cyberPurple, cyberPurple2]), startPoint: .topLeading, endPoint: .topTrailing)
                )
            MessageField(messageManager: messagesManager)
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [cyberPurple, cyberPurple2]), startPoint: .topLeading, endPoint: .topTrailing)
            )
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

