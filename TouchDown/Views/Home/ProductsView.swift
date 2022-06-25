//
//  ProductsView.swift
//  TouchDown
//
//  Created by Benjamin on 25/06/2022.
//

import SwiftUI

struct ProductsView: View {
    var body: some View {
        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 15, pinnedViews: []) {
            ForEach(products) { pro in
                ProductItem(product: pro)
            }
        }.padding(15)
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
            .previewLayout(.sizeThatFits)
    }
}

//MARK: - ProductItemView
struct ProductItem: View {
    let product: Product
    @State private var isAnimate = false
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            //Photo
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .opacity(isAnimate ? 1 : 0)
            }
                .background(product.bgColor)
                .cornerRadius(12)
            //Name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            //Price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }.onAppear {
            withAnimation(.easeIn(duration: 0.5)) {
                isAnimate = true
            }
        }
    }
}

struct ProductItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductItem(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(backgroundColor)
    }
}





//MARK: - TitleView
struct TitleView: View {
    let title: String
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }
            .padding(.horizontal)
            .padding(.top, 15)
            .padding(.bottom, 10)

    }
}
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmets")
            .previewLayout(.sizeThatFits)
            .padding()
            .background(backgroundColor)
    }
}
