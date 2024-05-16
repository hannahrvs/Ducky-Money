// Filename: Ducky Money
// EID: hvs337
// Course: CS329E

import SwiftUI

struct EggAnimationView: View {
    
    @EnvironmentObject var duckNameManager: DuckNameManager

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Image("Ducky_Money_Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("This is your new duck,")
                    .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
                Text("\(duckNameManager.savedDuckName)")
                    .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
                Text("Take care of your duck by saving money!")
                    .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
                Spacer()
                NavigationLink(destination: TabViewClass().navigationBarHidden(true)) {
                    ZStack {
                        Image("Circle")
                        .frame(width: 58.92387, height: 58.92387)                        
                        Image("Arrow")
                            .resizable()
                            .frame(width: 19.0636, height: 19.06361)
                            .rotationEffect(Angle(degrees: 0))
                    }
                }

            }
        }
    }
}

struct EggAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        EggAnimationView()
    }
}
