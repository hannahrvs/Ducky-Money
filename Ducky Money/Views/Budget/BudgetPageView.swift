// Filename: Ducky Money
// EID: hvs337
// Course: CS329E

import SwiftUI
import Charts



struct BudgetPageView: View {
    
    @EnvironmentObject var expensesManager: ExpensesManager 
    @EnvironmentObject var budgetManager: BudgetManager
    
    var body: some View {
        VStack {
            Text("Your current budget is: $\(budgetManager.savedBudget)")
                .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
            
            Chart(expensesManager.expensesList) { d in
                SectorMark(
                    angle: .value("Amount", d.amount),
                    innerRadius: .fixed(60)
                )
                .foregroundStyle(by: .value("Day", d.category))
            }
            .padding()
            Spacer()
            NavigationLink(destination: AddExpensesView()) {
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 358, height: 58.91671)
                        .background(Color(red: 1, green: 0.76, blue: 0))
                        .cornerRadius(8.41667)
                    Text("Add Expense")
                      .font(
                        Font.custom("Arial Rounded MT Bold", size: 20)
                          .weight(.bold)
                      )
                      .multilineTextAlignment(.center)
                      .foregroundColor(.white)
                }           
            }

            HStack {
                NavigationLink(destination: SeeExpensesView()) {
                    ZStack {
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 171, height: 40)
                          .background(Color(red: 1, green: 0.76, blue: 0))
                          .cornerRadius(10)
                        Text("See Expenses")
                          .font(
                            Font.custom("Arial Rounded MT Bold", size: 14)
                              .weight(.semibold)
                          )
                          .multilineTextAlignment(.center)
                          .foregroundColor(.white)
                          .frame(width: 136, alignment: .top)
                    }

                }
                NavigationLink(destination: AdjustBudgetView()) {
                    ZStack {
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 171, height: 40)
                          .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                          .cornerRadius(10)
                        Text("Adjust Budget")
                          .font(
                            Font.custom("Arial Rounded MT Bold", size: 14)
                              .weight(.semibold)
                          )
                          .multilineTextAlignment(.center)
                          .foregroundColor(Color(red: 0.51, green: 0.57, blue: 0.63))
                          .frame(width: 122, alignment: .top)
                    }
                }
                
            }
            Spacer()
        }
        
        
    }
}

struct BudgetPageView_Previews: PreviewProvider {
    static var previews: some View {
        BudgetPageView().environmentObject(ExpensesManager())
    }
}
