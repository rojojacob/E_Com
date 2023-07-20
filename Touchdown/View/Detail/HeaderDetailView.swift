//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by wac on 19/07/23.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: properties
    // adding instance of shop class
    @EnvironmentObject var shop: Shop
    //MARK: body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })
        .foregroundColor(.white)
    }
}

//MARK: preview
struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
