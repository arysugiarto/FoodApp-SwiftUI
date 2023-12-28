//
//  HomeView.swift
//  FoodApp
//
//  Created by Ary Sugiarto on 02/12/23.
//

import SwiftUI
import NavigationBackport

struct HomeView: View {
    @EnvironmentObject private var navigator: PathNavigator
    
    static let identifier = "home"
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewLayout(.sizeThatFits)
    }
    
}
