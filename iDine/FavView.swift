//
//  FavView.swift
//  iDine
//
//  Created by Subhrajyoti Chakraborty on 19/02/21.
//

import SwiftUI

struct FavView: View {
    @EnvironmentObject var fav: Fav
    
    func delete(at offset: IndexSet) {
        fav.favItems.remove(atOffsets: offset)
    }
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fav.favItems) { favItem in
                        NavigationLink(
                            destination: ItemDetail(item: favItem, fromFav: true),
                            label: {
                                ItemRow(item: favItem)
                            })
                    }
                    .onDelete(perform: delete)
                }
            }
            .navigationTitle("Fav")
            .listStyle(InsetGroupedListStyle())
            .toolbar {
                EditButton()
            }
        }
    }
}

struct FavView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FavView().environmentObject(Fav())
        }
    }
}
