//
//  ContentView.swift
//  iosApp
//
//  Created by Rodrigo Cavalcante on 20/02/24.
//

import SwiftUI
import Shared
struct ContentView: View {
    
    @ObservedObject var viewmodel:LoginViewModel
    @State var showAlertMessage: Bool = false
    @State var textAlert: String? = nil
    
    var body: some View {
        VStack {
            
            Button(action: {
                viewmodel.register(email: "rodrigocavalcante.pro@gmail.com", password: "1234567", onResult: { msg, displayAlert in
                    showAlertMessage = !displayAlert
                    textAlert = msg
                })
            }) {
                Text("Sign In")
            }.alert(textAlert ?? "", isPresented: $showAlertMessage) {
                Button("OK") {
                    showAlertMessage = false
                }
            }

        }
        .padding()
    }
}

#Preview {
    ContentView(viewmodel: LoginViewModel(loginService: UserService()))
}
