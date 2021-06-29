//
//  BottomRoomView.swift
//  Clubhouse
//
//  Created by yz qi on 6/28/21.
//

import SwiftUI

struct BottomRoomView: View {
    
    enum BottonRoomViewActions {
        case leave
    }
    
    typealias BottomRoomActionHandler = (_ action: BottonRoomViewActions) -> Void
    
    let handler: BottomRoomActionHandler
    
    internal init(handler: @escaping BottomRoomView.BottomRoomActionHandler) {
        self.handler = handler
    }
    
    var body: some View {
        
        HStack(spacing: 22) {
            
            Button(action: {
                handler(.leave)
            }, label: {
                Text("✌️ Leave quietly")
                    .font(Font.Nunito.bold(size: 16))
                    .foregroundColor(Color.customRed)
                    .padding(.horizontal, 13)
                    .padding(.vertical, 8)
                    .background(Color.customLightGray)
                    .cornerRadius(18)
                
            })
            
            Spacer()
            
            Image
                .plus
                .font(Font.Nunito.semiBold(size: 24))
                .padding(8)
                .background(Color.customLightGray)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            Image
                .handRaised
                .font(Font.Nunito.semiBold(size: 24))
                .padding(4)
                .background(Color.customLightGray)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
        }
        .padding(.horizontal, 15)
        .padding(.top, 10)
        .frame(maxWidth: .infinity,
               maxHeight: 100,
               alignment: .top)
        .background(Color.cardBackground)
    }
}

struct BottomRoomView_Previews: PreviewProvider {
    static var previews: some View {
        BottomRoomView { _ in }
    }
}