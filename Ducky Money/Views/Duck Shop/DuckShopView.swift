// Filename: Ducky Money
// EID: hvs337
// Course: CS329E

import SwiftUI

struct DuckShopView: View {
    var body: some View {
        NavigationView {
            List(items) { item in
                NavigationLink(destination: DuckShopPreviewView(item:item)) {
                    DuckShopRow(item:item)
                }
                .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
            }
        }
    }
}

struct DuckShopView_Previews: PreviewProvider {
    static var previews: some View {
        DuckShopView()
    }
}
