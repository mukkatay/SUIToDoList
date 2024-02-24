//
//  RegisterView.swift
//  SUIToDoList
//
//  Created by Akyl Mukatay  on 24.02.2024.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            HeaderView(
                title: "Register",
                subtitle: "Start organizing todos",
                angle: -15,
                background: .black
            )
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
