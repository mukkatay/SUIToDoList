//
//  RegisterView.swift
//  SUIToDoList
//
//  Created by Akyl Mukatay  on 24.02.2024.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            HeaderView(title: "Register",
                       subtitle: "Start organizing todos",
                       angle: -15,
                       background: .black)
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TDLButton(
                    title: "Create Account",
                    background: .yellow
                ) {
                    viewModel.register()
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
