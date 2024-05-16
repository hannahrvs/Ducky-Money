// Filename: Ducky Money
// EID: hvs337
// Course: CS329E

import SwiftUI

struct AddExpensesView: View {
    
    @State private var selectedCategory: String = ""
    @State private var categorySaved: String = ""
    @State private var amountSpentSaved: String = ""
    @State private var enteredAmount: String = ""
    
    @EnvironmentObject var expensesManager: ExpensesManager 
        
    var body: some View {

        NavigationView {
            VStack {
                HStack {
                    VStack {
                        Button(action: {
                            selectedCategory = "Housing"
                        }) {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(Color(red: 0.91, green: 0.93, blue: 0.96))
                                    .frame(width: 105, height: 105)
                                    .cornerRadius(15)
                                
                                Image("Housing")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 90, height: 90)
                                    .cornerRadius(15)
                            }
                        }
                        Text("Housing")
                            .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
                    }
                    VStack {
                        Button(action: {
                            selectedCategory = "Utilities"
                        }) {
                            ZStack {
                                Rectangle()
                                  .foregroundColor(.clear)
                                  .frame(width: 105, height: 105)
                                  .background(Color(red: 0.91, green: 0.93, blue: 0.96))
                                  .cornerRadius(15)
                                Image("Utilities")
                            }

                        }
                            Text("Utilities")
                            .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))

                    }
                    VStack {
                        Button(action: {
                            selectedCategory = "Transportation"
                        }) {
                            ZStack {
                                Rectangle()
                                  .foregroundColor(.clear)
                                  .frame(width: 105, height: 105)
                                  .background(Color(red: 0.91, green: 0.93, blue: 0.96))
                                  .cornerRadius(15)
                                Image("Transportation")
                            }
                        }
                        
                        Text("Transportation")
                            .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))

                    }
                }
                HStack {
                    VStack {
                        Button(action: {
                            selectedCategory = "Food"
                        }) {
                            ZStack {
                                Rectangle()
                                  .foregroundColor(.clear)
                                  .frame(width: 105, height: 105)
                                  .background(Color(red: 0.91, green: 0.93, blue: 0.96))
                                  .cornerRadius(15)
                                Image("Food")
                            }
                        }
                        
                        Text("Food")
                            .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))

                    }
                    VStack {
                        Button(action: {
                            selectedCategory = "Savings"
                        }) {
                            ZStack {
                                Rectangle()
                                  .foregroundColor(.clear)
                                  .frame(width: 105, height: 105)
                                  .background(Color(red: 0.91, green: 0.93, blue: 0.96))
                                  .cornerRadius(15)
                                Image("Savings")
                            }
                        }
                        Text("Savings")
                            .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))

                    }
                    
                    VStack {
                        Button(action: {
                            selectedCategory = "Medical"
                        }) {
                            ZStack {
                                Rectangle()
                                  .foregroundColor(.clear)
                                  .frame(width: 105, height: 105)
                                  .background(Color(red: 0.91, green: 0.93, blue: 0.96))
                                  .cornerRadius(15)
                                Image("Medical")
                            }
                        }
                        
                        Text("Medical")
                            .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))

                    }
                }
                
                HStack {
                    VStack {
                        Button(action: {
                            selectedCategory = "Personal Expenses"
                        }) {
                            ZStack {
                                Rectangle()
                                  .foregroundColor(.clear)
                                  .frame(width: 105, height: 105)
                                  .background(Color(red: 0.91, green: 0.93, blue: 0.96))
                                  .cornerRadius(15)
                                Image("Personal")
                            }
                        }
                        
                        Text("Personal")
                            .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))

                    }
                    VStack {
                        Button(action: {
                            selectedCategory = "Entertainment"
                        }) {
                            ZStack {
                                Rectangle()
                                  .foregroundColor(.clear)
                                  .frame(width: 105, height: 105)
                                  .background(Color(red: 0.91, green: 0.93, blue: 0.96))
                                  .cornerRadius(15)
                                Image("Entertainment")
                            }
                        }
                        Text("Entertainment")
                            .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))

                    }
                    VStack {
                        Button(action: {
                            selectedCategory = "Other Things"
                        }) {
                            ZStack {
                                Rectangle()
                                  .foregroundColor(.clear)
                                  .frame(width: 105, height: 105)
                                  .background(Color(red: 0.91, green: 0.93, blue: 0.96))
                                  .cornerRadius(15)
                                Image("Other")
                            }
                        }
                        
                        Text("Other")
                            .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))

                    }
                }
            }
        }
        Text("Selected Category: \(selectedCategory)")
            .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
        Spacer()
        TextField("Enter Amount Spent", text: $enteredAmount)
            .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
            .foregroundColor(Color(red: 0.51, green: 0.57, blue: 0.63))
            .frame(width: 320)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(red: 0.91, green: 0.93, blue: 0.96), lineWidth: 1)
            )
        HStack {
            Button(action: {
                selectedCategory = ""
                categorySaved = ""
            }) {
                ZStack {
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 171, height: 40)
                      .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                      .cornerRadius(10)
                    Text("Cancel")
                      .font(
                        Font.custom("Arial Rounded MT Bold", size: 14)
                          .weight(.semibold)
                      )
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.51, green: 0.57, blue: 0.63))
                      .frame(width: 122, alignment: .top)
                }

            }
            Button(action: {
                // text displayed at bottom
                amountSpentSaved = enteredAmount
                categorySaved = selectedCategory
                
                // add new object to list
                if let amount = Int(amountSpentSaved) {
                    let newBudgetDataPoint = BudgetDataPoint(category: categorySaved, amount: amount)
                    expensesManager.expensesList.append(newBudgetDataPoint)
                }
            }) {
                ZStack {
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 171, height: 40)
                  .background(Color(red: 1, green: 0.76, blue: 0))
                  .cornerRadius(10)
                Text("Save")
                    .font(
                      Font.custom("Arial Rounded MT Bold", size: 14)
                        .weight(.bold)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                }
            }
        }
        Text("You spent a total of: $\(amountSpentSaved) on \(categorySaved) ")
            .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
        Spacer()
    }
}

#Preview {
    AddExpensesView()
}
