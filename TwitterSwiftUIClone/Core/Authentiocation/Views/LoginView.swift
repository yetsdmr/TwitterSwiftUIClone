//
//  LoginView.swift
//  TwitterSwiftUIClone
//
//  Created by Yunus Emre Taşdemir on 15.04.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        // parent container
        VStack {
            
            // header view
            VStack(alignment: .leading ) {
                HStack { Spacer() }
                
                Text("Hello")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("Welcome Back")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .frame(height: 260)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight] ))
            
            VStack(spacing: 40) {
                CustomInputView(imageName: "envelope", placeHolderText: "Email", text: $email)
                
                CustomInputView(imageName: "lock", placeHolderText: "Password", text: $password)
            }
            .padding(.horizontal, 32)
            .padding(.top, 44)
            
            HStack {
                Spacer()
                
                NavigationLink {
                    Text("Reset Password View..")
                } label: {
                    Text("Forger Password?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                        .padding(.trailing, 24)
                }
            }
            
            Button {
                print("Sign in here...")
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0)

            Spacer()
            
            NavigationLink {
                RegistrationView()
                    .navigationBarHidden(true)
            } label: {
                HStack {
                    Text("Don't have account?")
                        .font(.footnote)
                    
                    Text("Sign Up")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
            }
            .padding(.bottom, 32)
            .foregroundColor(Color(.systemBlue))

        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
