// Filename: Ducky Money
// EID: hvs337
// Course: CS329E

import SwiftUI
import Firebase

struct SignUpView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
    
    @State private var navigateToNextView = false
    @State private var isShowingAlert = false
    
    @State private var alertTitle = ""
    @State private var alertMessage = ""
    
    func signUp() {
        if password == confirmPassword {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let error = error {
                    print("Sign-in error: \(error.localizedDescription)")
                    alertTitle = "Sign In Error"
                    alertMessage = "Failed to sign in: \(error.localizedDescription)"
                    isShowingAlert = true
                } else {
                    print("Sign-in successful!")
                    navigateToNextView = true
                }
            }
        } 
    }
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Spacer()
                Text("Hello! Register to get started")
                  .font(
                    Font.custom("Arial Rounded MT Bold", size: 31.56253)
                      .weight(.bold)
                  )
                  .foregroundColor(Color(red: 0.12, green: 0.14, blue: 0.17))
                  .frame(width: 348.23987, alignment: .topLeading)
                Spacer()
                TextField("Email", text: $email)
                    .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
                    .foregroundColor(Color(red: 0.51, green: 0.57, blue: 0.63))
                    .frame(width: 320)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 8.41667)
                            .stroke(Color(red: 0.91, green: 0.93, blue: 0.96), lineWidth: 1.05)
                    )
                TextField("Password", text: $password)
                    .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
                    .foregroundColor(Color(red: 0.51, green: 0.57, blue: 0.63))
                    .frame(width: 320)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 8.41667)
                            .stroke(Color(red: 0.91, green: 0.93, blue: 0.96), lineWidth: 1.05)
                    )
                TextField("Confirm Password", text: $confirmPassword)
                    .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
                    .foregroundColor(Color(red: 0.51, green: 0.57, blue: 0.63))
                    .frame(width: 320)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 8.41667)
                            .stroke(Color(red: 0.91, green: 0.93, blue: 0.96), lineWidth: 1.05)
                    )
                Button(action: {
                    signUp()
                }) {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 359, height: 58.91671)
                            .background(Color(red: 1, green: 0.76, blue: 0))
                            .cornerRadius(8.41667)
                        Text("Sign Up")
                            .font(Font.custom("Arial Rounded MT Bold", size: 20).weight(.bold))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(width: 91, alignment: .top)
                    }
                }
                .alert(isPresented: $isShowingAlert) {
                    Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("OK")))
                    
                }
                .background(NavigationLink(
                    destination: NameDuckView().navigationBarHidden(true),
                    isActive: $navigateToNextView,
                    label: {
                        EmptyView()
                    }
                ).opacity(0)
                 .buttonStyle(PlainButtonStyle())
                )
                Spacer()
                HStack {
                    Text("Have an account?")
                            .font(Font.custom("Arial Rounded MT Bold", size: 15))
                    NavigationLink(
                        destination: LoginView().navigationBarHidden(true)) {
                            Text("Log in here")
                                .font(Font.custom("Arial Rounded MT Bold", size: 15))
                                .foregroundColor(Color(UIColor(red: 1, green: 0.76, blue: 0, alpha: 1))
                                )
                    }
                }
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
