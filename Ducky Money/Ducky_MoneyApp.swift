// Filename: Ducky Money
// EID: hvs337
// Course: CS329E

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct Ducky_MoneyApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @StateObject var expensesManager = ExpensesManager()
    @StateObject var budgetManager = BudgetManager()
    @StateObject var duckNameManager = DuckNameManager()
    @StateObject var equippedItemManager = EquippedItemManager()

    
    
    var body: some Scene {
        WindowGroup {
            LoadingView()
                .environmentObject(expensesManager) 
                .environmentObject(budgetManager)
                .environmentObject(duckNameManager)    
                .environmentObject(equippedItemManager)
        }
    }
}
