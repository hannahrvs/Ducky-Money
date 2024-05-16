// Filename: Ducky Money
// EID: hvs337
// Course: CS329E

import SwiftUI

struct LoadingView: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5

    var body: some View {
        VStack {
            if isActive {
                LoginOrSignUpView()
            } else {
                VStack {
                    Image("duckymoneylogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaleEffect(size)
                        .scaleEffect(opacity)
                        .onAppear {
                            withAnimation(.easeIn(duration: 1.2)) {
                                self.size = 0.9
                                self.opacity = 1.0
                            }
                        }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation() {
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}


struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
