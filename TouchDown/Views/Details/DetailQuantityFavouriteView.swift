//
//  DetailQuantityFavouriteView.swift
//  TouchDown
//
//  Created by Benjamin on 25/06/2022.
//

import SwiftUI

struct DetailQuantityFavouriteView: View {
    @State private var counter: Int = 0
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                
                if(counter > 0) {
                    counter -= 1
                    feedback.impactOccurred()
                }
            } label: {
                Image(systemName: "minus.circle")
            }
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            Button {
                if(counter < 100) {
                    counter += 1
                    feedback.impactOccurred()
                }
            } label: {
                Image(systemName: "plus.circle")
            }

            Spacer()
            Button {
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }

        }
            .font(.system(.title, design: .rounded))
            .foregroundColor(.black)
            .imageScale(.large)
    }
}

struct DetailQuantityFavouriteView_Previews: PreviewProvider {
    static var previews: some View {
        DetailQuantityFavouriteView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
