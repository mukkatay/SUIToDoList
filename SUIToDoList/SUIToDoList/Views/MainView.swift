//
//  ContentView.swift
//  SUIToDoList
//
//  Created by Akyl Mukatay  on 24.02.2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            ToDoListView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
