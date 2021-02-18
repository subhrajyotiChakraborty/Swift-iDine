//
//  ItemDetail.swift
//  iDine
//
//  Created by Subhrajyoti Chakraborty on 18/02/21.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("\(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: 0, y: 0)
            }
            Text("\(item.description)")
                .padding()
            Button("Order This") {
                order.add(item: item)
            }
            .font(.headline)
            Spacer()
        }
        .navigationTitle(Text("\(item.name)"))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example).environmentObject(Order())
        }
    }
}
