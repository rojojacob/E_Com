//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by wac on 19/07/23.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: -properties
    @State private var isAnimating  : Bool = false
    @EnvironmentObject var shop: Shop
    //MARK: - body
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            //PRICE
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimating ? -50 : -75) //animation style
            Spacer()
            //:PHOTO
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
            
        })//:HStack
        .onAppear(perform:  {
            withAnimation(.easeOut(duration: 0.75)) {
            isAnimating.toggle()
        }
        })
    }
}
//MARK: - preview
struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
           
    }
}
