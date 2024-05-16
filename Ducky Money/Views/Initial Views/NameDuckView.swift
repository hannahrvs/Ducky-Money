// Filename: Ducky Money
// EID: hvs337
// Course: CS329E

class DuckNameManager: ObservableObject {
    @Published var savedDuckName: String = ""
}
import SwiftUI

struct NameDuckView: View {
    
    @EnvironmentObject var duckNameManager: DuckNameManager
           
    @State private var enteredDuckName: String = ""
    @State private var savedDuckName: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Welcome!")
                    .font(
                      Font.custom("Arial Rounded MT Bold", size: 31.56253)
                        .weight(.bold)
                    )
                    .foregroundColor(Color(red: 0.12, green: 0.14, blue: 0.17))
                    .frame(width: 348.23987, alignment: .center)
                Image("Ducky_Money_Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                TextField("Name your duck", text: $enteredDuckName)
                    .font(Font.custom("Arial Rounded MT Bold", size: 15.78126))
                    .foregroundColor(Color(red: 0.51, green: 0.57, blue: 0.63))
                    .frame(width: 320)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 8.41667)
                            .stroke(Color(red: 0.91, green: 0.93, blue: 0.96), lineWidth: 1.05)
                    )
                Spacer()
                NavigationLink(
                    destination: EggAnimationView().navigationBarHidden(true)) {
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 359, height: 58.91671)
                                .background(Color(red: 1, green: 0.76, blue: 0))
                                .cornerRadius(8.41667)
                            Text("Save")
                                .font(
                                    Font.custom("Arial Rounded MT Bold", size: 20)
                                        .weight(.bold)
                                )
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                                .frame(width: 91, alignment: .top)
                        }
                }.onDisappear {
                    duckNameManager.savedDuckName = enteredDuckName
                }
                Spacer()
                Text("This is your new duck!")
                        .font(Font.custom("Arial Rounded MT Bold", size: 15))
                
            }
        }
    }
}

struct NameDuckView_Previews: PreviewProvider {
    static var previews: some View {
        NameDuckView()
    }
}
