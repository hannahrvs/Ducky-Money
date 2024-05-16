// Filename: Ducky Money
// EID: hvs337
// Course: CS329E

import SwiftUI

struct DuckShopRow: View {
    
    var item: DuckShopData
    
    var body: some View {
        VStack{
            Text(item.name)
            HStack {
                Text("$\(item.price)")
                Spacer()
                Image("\(item.image)")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: item.type == "hold" ? 25 : (item.type == "head" ? 80 : nil),
                           height: item.type == "hold" ? 180 : (item.type == "head" ? 150 : nil))

            }
        }
    }
}

#Preview {
    DuckShopRow(item: items[5])
}
