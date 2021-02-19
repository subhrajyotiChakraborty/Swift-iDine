import SwiftUI

class Fav: ObservableObject {
    @Published var favItems = [MenuItem]()
    
    func add(item: MenuItem) {
        favItems.append(item)
    }
    
    func remove(item: MenuItem) {
        if let index = favItems.firstIndex(of: item) {
            favItems.remove(at: index)
        }
    }
}
