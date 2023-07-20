//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by wac on 18/07/23.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: properties
    @State private var isAnimated : Bool = false
    
    //MARK: BODY
    var body: some View {
        HStack {
            Button (action: {}, label:  {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }) //: Button
            Spacer() // to allign it to both the sides
            
            // animating the logo to come down when the navigation bar loads 
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0 , y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                })
            Spacer(
            )
            Button (action: {}, label: {
                //embed the image to zstack to bring the red dot to the cart
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            })//:button
            
        }//:hstack
    }
}


//MARK: preview
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
