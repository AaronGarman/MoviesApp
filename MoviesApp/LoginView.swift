//
//  LoginView.swift
//  MoviesApp
//
//  Created by Aaron Garman on 7/30/24.
//

import SwiftUI

struct LoginView: View {

    @State private var email: String = ""
    @State private var password: String = ""

    var body: some View {
        ZStack { // maybe add background color?
            //Color(.systemBlue)
                //.ignoresSafeArea()
            // Vstack for title + image + fields Vstack and buttons Hstack
            VStack {
                Text("Movies App")
                    .font(.largeTitle)
                Image(systemName: "film")
                    .imageScale(.large)
                    .aspectRatio(contentMode: .fill)
                    .padding(.top, 10)
                // Vstack for email + password fields
                VStack {
                    TextField("Email", text: $email)
                    SecureField("Password", text: $password)
                }
                .textFieldStyle(.roundedBorder)
                .textInputAutocapitalization(.never)
                .padding(40)
                // Hstack for sign up + login buttons
                HStack {
                    Button("Sign Up") {
                        print("Sign up user: \(email), \(password)")
                        // will sign in user
                    }
                    .buttonStyle(.borderedProminent)
                    Button("Login") {
                        print("Login user: \(email), \(password)")
                        // will login user
                    }
                    .buttonStyle(.bordered)
                }
            }
        }
    }
}

#Preview {
    LoginView()
}

// more spacing between elements in code? compare w/ examples?
