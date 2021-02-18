//
//  ItemDetail.swift
//  iDine
//
//  Created by Subhrajyoti Chakraborty on 18/02/21.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem
    
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
            Spacer()
        }
        .navigationTitle(Text("\(item.name)"))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail(item: MenuItem.example)
    }
}
