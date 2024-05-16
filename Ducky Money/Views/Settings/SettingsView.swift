// Filename: Ducky Money
// EID: hvs337
// Course: CS329E

import SwiftUI
import Firebase

struct SettingsView: View {
    
    @State private var isSound = true
    @AppStorage("isDarkMode") private var isDark = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Settings")
                    .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
                
                Spacer()
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 358, height: 58)
                        .background(Color(red: 0.97, green: 0.97, blue: 0.98))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .inset(by: 0.5)
                                .stroke(Color(red: 0.91, green: 0.93, blue: 0.96), lineWidth: 1)
                        )
                    Toggle("Sound", isOn: $isSound)
                        .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
                        .foregroundColor(Color(red: 0.51, green: 0.57, blue: 0.63))
                        .frame(width: 310, alignment: .center)
                        .onChange(of: isSound) { newValue in
                        if !newValue {
                            audioPlayer?.stop()
                        } else {
                            playSound(sound: "backgroundmusic", type: "mp3")
                        }
                    }.onAppear(perform: {
                        playSound(sound: "backgroundmusic", type: "mp3")
                    })
                }
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 358, height: 58)
                        .background(Color(red: 0.97, green: 0.97, blue: 0.98))
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .inset(by: 0.5)
                                .stroke(Color(red: 0.91, green: 0.93, blue: 0.96), lineWidth: 1)
                        )
                    Toggle("Dark Mode", isOn: $isDark)
                        .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
                        .foregroundColor(Color(red: 0.51, green: 0.57, blue: 0.63))
                        .frame(width: 310, alignment: .center)
                        .onChange(of: isDark) { newValue in
                       UIApplication.shared.windows.first?.rootViewController?.overrideUserInterfaceStyle = newValue ? .dark : .light
                    }
                }
                NavigationLink(
                    destination: HowToView()) {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 358, height: 58)
                                .background(Color(red: 0.97, green: 0.97, blue: 0.98))
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .inset(by: 0.5)
                                        .stroke(Color(red: 0.91, green: 0.93, blue: 0.96), lineWidth: 1)
                                )
                            Text("How to")
                                .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
                                .foregroundColor(Color(red: 0.51, green: 0.57, blue: 0.63))
                                .frame(width: 200, alignment: .center)
                        }
                }
                Spacer()
                Button(action: {
                    do {
                        try Auth.auth().signOut()
                        presentationMode.wrappedValue.dismiss()
                    } catch let signOutError as NSError {
                        print("Error signing out: \(signOutError)")
                    }
                }) {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 358, height: 58)
                            .background(Color(red: 1, green: 0.76, blue: 0))
                            .cornerRadius(8.42)
                        
                        Text("Sign Out")
                            .font(Font.custom("Arial Rounded MT Bold", size: 20).weight(.bold))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(width: 91, alignment: .top)
                    }
                }

            }
        }
    }
}

#Preview {
    SettingsView()
}

