// Filename: Ducky Money
// EID: hvs337
// Course: CS329E

import SwiftUI

struct AdjustBudgetView: View {
    
    @EnvironmentObject var budgetManager: BudgetManager
    
    @State private var enteredBudget: String = ""
    @State private var savedBudget: String = ""

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                TextField("Enter your total budget", text: $enteredBudget)
                    .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
                    .foregroundColor(Color(red: 0.51, green: 0.57, blue: 0.63))
                    .frame(width: 320)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 0.91, green: 0.93, blue: 0.96), lineWidth: 1)
                    )
                    .background(Color(red: 0.97, green: 0.97, blue: 0.98))

                Spacer()
                
                Text("Your current budget is: $\(budgetManager.savedBudget)")
                    .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
                
                Spacer()
                Button(action: {
                    budgetManager.savedBudget = enteredBudget
                }) {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 358, height: 58)
                            .background(Color(red: 1, green: 0.76, blue: 0))
                            .cornerRadius(8.42)
                        
                        Text("Save")
                            .font(Font.custom("Arial Rounded MT Bold", size: 20).weight(.bold))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                    }
                }
                
            }
        }
    }
}

#Preview {
    AdjustBudgetView()
}
