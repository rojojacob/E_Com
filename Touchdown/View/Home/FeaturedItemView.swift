//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by wac on 19/07/23.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: properties
    let player: Player
    
    
    //MARK: Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//MARK: preview
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: player[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
