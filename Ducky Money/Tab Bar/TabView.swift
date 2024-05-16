// Filename: Ducky Money
// EID: hvs337
// Course: CS329E

import SwiftUI

struct TabViewClass: View {
    var body: some View {
        TabView {
            HomePageView()
                .tabItem {
                    Image("Home")
                    Text("Home")
                }
            BudgetPageView()
                .tabItem {
                    Image("Money Bag")
                    Text("Budget")
                }
            DuckShopView()
                .tabItem {
                    Image("Shop")
                    Text("Duck Shop")
                }
            SettingsView()
                .tabItem {
                    Image("Settings")
                    Text("Settings")
                }
        }
        .accentColor(.yellow)
    }
}

struct TabViewClass_Previews: PreviewProvider {
    static var previews: some View {
        TabViewClass()
    }
}
