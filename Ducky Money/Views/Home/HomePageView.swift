// Filename: Ducky Money
// EID: hvs337
// Course: CS329E

import SwiftUI

struct HomePageView: View {
    
    @EnvironmentObject var equippedItemManager: EquippedItemManager
        
    var body: some View {
        VStack {
            ZStack {
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                ZStack {
                    Image("Ducky_Money_Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image("\(equippedItemManager.equippedItem)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                
            }
            
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
