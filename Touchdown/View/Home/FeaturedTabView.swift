//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by wac on 19/07/23.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(player) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
                
            }
        }//: tabview
        // makin it a slidable image by inserting tab view
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(Color.gray)
    }
}
