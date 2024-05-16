// Filename: Ducky Money
// EID: hvs337
// Course: CS329E

import SwiftUI

struct HowToView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 162, height: 162)
                  .background(
                    Image("duckymoneylogo")
                      .resizable()
                      .aspectRatio(contentMode: .fill)
                      .frame(width: 162, height: 162)
                      .clipped()
                  )
                Text("How to Use Ducky Money")
                    .font(Font.custom("Arial Rounded MT Bold", size: 25))
                Spacer()
                VStack {
                    Text("Step 1: Tap the Budget Icon to adjust your budget, add your expenses, and see your expenses.")
                        .font(Font.custom("Arial Rounded MT Bold", size: 15))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)

                    Text("Step 2: Add your expenses by selecting a category and entering an amount. A pie chart will appear as a summary of the expenses you added.")
                        .font(Font.custom("Arial Rounded MT Bold", size: 15))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)

                    Text("Step 3: You will be rewarded in Ducky Money which is calculated by subtracting the percentage you saved from your total budget.")
                        .font(Font.custom("Arial Rounded MT Bold", size: 15))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)

                    Text("Step 4: Use your Ducky Money to buy things in the Duck Shop!")
                        .font(Font.custom("Arial Rounded MT Bold", size: 15))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                }
                .frame(maxWidth: .infinity)

                Spacer()
            }
        }
    }
}

#Preview {
    HowToView()
}
