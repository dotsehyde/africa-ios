//
//  CategoryView.swift
//  TouchDown
//
//  Created by Benjamin on 25/06/2022.
//

import SwiftUI

struct CategoryView: View {
    let category = categories[0]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                Section(header: SectionView(rotate: false),
                        footer: SectionView(rotate: true)) {
                    ForEach(categories) { cat in
                        Button(action: {

                        }, label: {
                            CategoryItem(category: cat)
                        })
                    }
                }

            }
                .frame(height: 140)
                .padding(.horizontal, 15)
                .padding(.vertical, 10)

        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(backgroundColor)
    }
}

//MARK: - CategoryItemView
struct CategoryItem: View {
    let category: Category
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Image(category.image)
                .renderingMode(.template)
                .resizable()
                .frame(width: 30, height: 30, alignment: .center)
                .foregroundColor(.gray)
            Text(category.name.uppercased())
                .foregroundColor(.gray)
                .fontWeight(.light)
            Spacer()
        }
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12) .stroke(.gray, lineWidth: 1))
    }
}
struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

//MARK: - SectionView
struct SectionView: View {
    @State var rotate: Bool
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotate ? 90 : -90))
            Spacer()
        }
            .background(grayColor.cornerRadius(12))
            .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotate: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(backgroundColor)
    }
}
