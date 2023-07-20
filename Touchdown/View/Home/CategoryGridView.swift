//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by wac on 19/07/23.
//

import SwiftUI

struct CategoryGridView: View {
    //MARK: properties
    
    //MARK: body
    var body: some View {
        // we create lazyhgrid so that it will only load the buttons when needed which in deed will increase the performance of the app
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing , pinnedViews: [], content:  {
                
                // to add header and footer we can embed Section in ForEach
                
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            }) //: grid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        })//: Scroll
    }
}


//MARK: preview
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
