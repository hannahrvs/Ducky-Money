// Filename: Ducky Money
// EID: hvs337
// Course: CS329E

import SwiftUI

import SwiftUI

struct SeeExpensesView: View {
    
    @EnvironmentObject var expensesManager: ExpensesManager
    
    var body: some View {
        
        List {
            ForEach(expensesManager.expensesList) { expense in
                Text("\(expense.category): $\(expense.amount)")
                    .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))

            }
        }
    }
}

#Preview {
    SeeExpensesView()
}
