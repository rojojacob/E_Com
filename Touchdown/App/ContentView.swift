//
//  ContentView.swift
//  Touchdown
//
//  Created by wac on 18/07/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: properties
    @EnvironmentObject var shop: Shop
    
    //MARK: body
    var body: some View {
        ZStack {
            if shop.showingProduct == false  && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                    //here we add these padding so that  it is always below the nouch
                    
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                    
    //                //use this older version was depricated
    //                    .padding(.top, UIApplication
    //                        .shared
    //                        .connectedScenes
    //                        .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
    //                        .first { $0.isKeyWindow }?.safeAreaInsets.top)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0 , y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0 ) {
                            FeaturedTabView()
                                .frame(height: UIScreen.main.bounds.width / 1.475) // setting up the size of the slider
                                .padding(.vertical, 20)
                                
                            CategoryGridView()
                                
                            TitleView(title: "Helmet")
                          
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                    // adding on tap so we can see the product in detail 
                                        .onTapGesture {
                                            withAnimation(.easeOut) {
                                                feedback.impactOccurred()
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }//:Loop
                            })//:GRID
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                                
                            
                            FooterView()
                                .padding(.horizontal)
                        }//: Vstack
                    }) //:Scroll
                    
                }//: Vstack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }//:zstack
        .ignoresSafeArea(.all, edges: .top)
    }
}

//MARK: preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
