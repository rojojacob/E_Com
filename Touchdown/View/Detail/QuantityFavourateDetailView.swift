//
//  QuantityFavourateDetailView.swift
//  Touchdown
//
//  Created by wac on 19/07/23.
//

import SwiftUI

struct QuantityFavourateDetailView: View {
    @State private var counter : Int = 0
    @State var isPink: Bool = true
    var body: some View {
        HStack (alignment: .center,spacing: 6, content: {
            Button(action: {
              
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            
                Text("\(counter)")
                    .fontWeight(.semibold)
                    .frame(minWidth: 36)
               
            Button(action: {
               
                if counter < 100 {
                    feedback.impactOccurred()
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
                
            
            Spacer()
            
            Button(action: {
                isPink.toggle()
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(isPink ? colorGray : .pink )
            })
        })//:HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
            
        }
    }


struct QuantityFavourateDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavourateDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
