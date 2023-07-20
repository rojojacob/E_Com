//
//  TitleView.swift
//  Touchdown
//
//  Created by wac on 19/07/23.
//

import SwiftUI

struct TitleView: View {
    //MARK: properties
    var title: String
    //MARK: body
    var body: some View {
        HStack() {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
        }//:HSATCK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

//MARK: preview
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
