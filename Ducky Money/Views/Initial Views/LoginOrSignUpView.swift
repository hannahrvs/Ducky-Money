// Filename: Ducky Money
// EID: hvs337
// Course: CS329E

import SwiftUI
import Firebase


struct LoginOrSignUpView: View {
        
    var body: some View {
        NavigationView {
            
            VStack {
                Image("Ducky_Money_Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text("Hello! Welcome to Ducky Money!")
                  .font(
                    Font.custom("Arial Rounded MT Bold", size: 31.56253)
                      .weight(.bold)
                  )
                  .foregroundColor(Color(red: 0.12, green: 0.14, blue: 0.17))
                  .frame(width: 348.23987, alignment: .topLeading)
                
                Spacer()
                
                NavigationLink(destination: LoginView().navigationBarHidden(true)) {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 359, height: 58.91671)
                            .background(Color(red: 1, green: 0.76, blue: 0))
                            .cornerRadius(8.41667)
                        
                        Text("Log In")
                            .font(
                                Font.custom("Arial Rounded MT Bold", size: 20)
                                    .weight(.bold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(width: 91, alignment: .top)
                    }
                }
                
                NavigationLink(destination: SignUpView().navigationBarHidden(true)) {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 359, height: 58.91671)
                            .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                            .cornerRadius(8.41667)
                        
                        Text("Sign Up")
                            .font(
                                Font.custom("Arial Rounded MT Bold", size: 20)
                                    .weight(.bold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(width: 91, alignment: .top)
                    }
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginOrSignUpView()
}
