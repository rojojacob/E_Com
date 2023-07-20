//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by wac on 19/07/23.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: properties
    @EnvironmentObject var shop: Shop
    //MARK: body
    var body: some View {
        VStack(alignment: .leading, spacing: 5,  content: {
            //NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //HEADER
            HeaderDetailView()
                .padding(.horizontal
                )
            
            //DETAIL TOP PART
            
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1) // brining the helmet to the frnt side of the white background
            //DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0 , content: {
                
                
                //RATING + SIZE
                RatingSizesDetailView()
                    .padding(.top, -25)
                    .padding(.bottom, 10)
                
                
                
                //DESCRIPTION
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })//: SCROLL
                
                //QUANTITY + FAVOURITE
                QuantityFavourateDetailView()
                    .padding(.vertical, 10)
                //ADD TO CART
                AddToCartDetailView()
                    .padding(.bottom, 20)
                
                Spacer()
                
            })//: VStack
            .padding(.horizontal)
            .background(Color.white
                .clipShape(CustomShape())
                .padding(.top, -100)) // we added the reated design to the top of the background from the file customShape
            
        })//:VSTACK
        .zIndex(0) // making the white background go behind
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                    green: shop.selectedProduct?.green ?? sampleProduct.green,
                    blue: shop.selectedProduct?.blue ??  sampleProduct.blue
        ).ignoresSafeArea(.all, edges: .all)
            )
    }
}


//MARK: preview
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
