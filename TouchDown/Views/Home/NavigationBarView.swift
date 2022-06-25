//
//  NavigationBarView.swift
//  TouchDown
//
//  Created by Benjamin on 25/06/2022.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - Props
    @State private var isAminate: Bool = false
    //MARK: - Body
    var body: some View {
        HStack {
            Button {

            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }
            Spacer()
            HStack(spacing: 4) {
                Text("TOUCH")
                    .font(.title3)
                    .fontWeight(.black)
                    .foregroundColor(.black)
                Image("logo-dark")
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)

                Text("DOWN")
                    .font(.title3)
                    .fontWeight(.black)
                    .foregroundColor(.black)
            }
                .onAppear {
                isAminate.toggle()
            }
                .opacity(isAminate ? 1 : 0)
                .offset(x: 0, y: isAminate ? 0 : -25)
                .animation(.easeInOut(duration: 0.5), value: isAminate)
            Spacer()
            Button {

            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    Color(.systemRed)
                        .frame(width: 14, height: 14, alignment: .center)
                        .cornerRadius(50)
                        .offset(x: 13, y: -10)
                }

            }
        }
        .padding(.horizontal,2)

    }
}
//MARK: - Preview
    struct NavigationBarView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationBarView()
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }

