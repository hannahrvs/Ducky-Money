// Filename: Ducky Money
// EID: hvs337
// Course: CS329E

import Foundation

class BudgetManager: ObservableObject {
    @Published var savedBudget: String = ""
}

class ExpensesManager: ObservableObject {
    @Published var expensesList: [BudgetDataPoint] = []
}

struct BudgetDataPoint: Identifiable {
    
    var id = UUID().uuidString
    var category: String
    var amount: Int
    
}
