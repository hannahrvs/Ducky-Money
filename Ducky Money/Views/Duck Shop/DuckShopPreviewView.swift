// Filename: Ducky Money
// EID: hvs337
// Course: CS329E

import SwiftUI

// this is where the user can see the image of their duck and the item selected

class EquippedItemManager: ObservableObject {
    @Published var equippedItem: String = ""
}


struct DuckShopPreviewView: View {
    
    @EnvironmentObject var equippedItemManager: EquippedItemManager
    @State private var equippedItem: String = ""

    var item: DuckShopData
    
    var body: some View {
        VStack {
            Text(item.name)
                .font(Font.custom("Arial Rounded MT Bold", size: 24))
            ZStack {
                Image("Ducky_Money_Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("\(item.image)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            Text("Price: $\(item.price)")
                .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
            Spacer()
            Button(action: {
                equippedItemManager.equippedItem = item.image
            }) {
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 358, height: 58.91671)
                        .background(Color(red: 1, green: 0.76, blue: 0))
                        .cornerRadius(8.41667)
                    
                    Text("Buy")
                        .font(
                            Font.custom("Arial Rounded MT Bold", size: 20)
                                .weight(.bold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 67, alignment: .top)
                }
            }
            Spacer()

        }
    }
}

#Preview {
    DuckShopPreviewView(item: DuckShopData(name: "Knife", type: "hold", price: 100, image: "Knife"))
}
