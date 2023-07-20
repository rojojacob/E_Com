//
//  LoginView.swift
//  Touchdown
//
//  Created by wac on 20/07/23.
//

import SwiftUI

struct LoginView: View {
    //MARK: - properties
    var loginButtonTapped: (Bool) -> Void
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showAlert = false
    
    //MARK:- body
    var body: some View {
            ZStack {
                MotionAnimationView() // This will be the background
                    .ignoresSafeArea() // Ignore safe area to fill the entire screen

                ZStack {
                    colorBackground
                        .scaledToFit()
                        .cornerRadius(12)
                        
                    VStack {
                        Image("helmet-no1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .padding(.top, 20)

                        // Username Text Field
                        TextField("Username", text: $username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal, 20)

                        // Password Text Field
                        SecureField("Password", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal, 20)

                        Button(action: {
                            if username == "rojo_jacob" && password == "rojo@1234" {
                                loginButtonTapped(true)
                            } else {
                                showAlert = true
                            }
                            
                            feedback.impactOccurred()
                        }, label: {
                            // to add spaces and align the text to the center just add 2 spacers() on top and bottom
                            Spacer()
                            Text("LogIn".uppercased())
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Spacer()
                        })//:Button
                        .padding(10)
                        .background(
                            Color(.orange)
                        )
                        .cornerRadius(50)
                        .padding(.top, 10)
                        .padding(.horizontal, 20)
                    }
                }
                .padding(.horizontal, 20)
            }
            .alert(isPresented: $showAlert, content: {
                Alert(title: Text("Error"), message: Text("Username or Password is wrong."), dismissButton: .default(Text("OK")))
            })
            .edgesIgnoringSafeArea(.all) // Ignore safe area to fill the entire screen
        }

}

//MARK: - preview
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView { isLoggedIn in
                   // Do something based on the login status, if needed
                   // In this, we won't do anything with isLoggedIn in the preview
               }
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
