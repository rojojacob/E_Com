//
//  ProductItemView.swift
//  Touchdown
//
//  Created by wac on 19/07/23.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: properties
    let product: Product
    
    
    //MARK: body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            // PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//:ZStack
            // decoding the color we get from the data RGB formate where it was color[]
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            
            // NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // PRICE
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray	)
            
            
        }) //: VSTACK
    }
}


//MARK: preview
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
