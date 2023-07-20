//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by wac on 19/07/23.
//

import SwiftUI

struct AddToCartDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            // to add spaces and allign the text tot he center just add 2 spacers() on top and bottom
            Spacer()
            Text("Add To Cart".uppercased())
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })//:Button
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            ))
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
