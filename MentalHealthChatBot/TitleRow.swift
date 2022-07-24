//
//  TitleRow.swift
//  ChatApp
//
//  Created by Stephanie Diep on 2022-01-11.
//

import SwiftUI

struct TitleRow: View {
    var name = "Bobot"
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "pc")
                .font(.largeTitle)
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title).bold()
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Peach"))
    }
}
