//
//  ContentView.swift
//  FoodApp
//
//  Created by Ary Sugiarto on 01/12/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var loginVM = LoginViewModel()
    //    @StateObject private var accountListVM = AccountListViewModel()
    @State private var isLogedIn = false
    
    var body: some View {
        NavigationView{
        VStack {
            Form {
                HStack {
                    Spacer()
                    Image(systemName: loginVM.isAuthenticated ? "lock.fill": "lock.open")
                }
                TextField("Username", text: $loginVM.username)
                SecureField("Password", text: $loginVM.password)
                Spacer()
                        Button("Login") {
                                loginVM.login()
                                isLogedIn = true
                            }.navigationTitle("Login")
                    } .buttonStyle(PlainButtonStyle())
            .navigationTitle("Login")
            .embedInNavigationView()
            }
                
                    
                    
        }.fullScreenCover(isPresented: $isLogedIn, content: {
            HomeView()
        })
        
       
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }

    

