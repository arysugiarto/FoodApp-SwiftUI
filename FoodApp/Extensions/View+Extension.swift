//
//  View+Extension.swift
//  FoodApp
//
//  Created by Ary Sugiarto on 02/12/23.
//


import Foundation
import SwiftUI

extension View {
    
    func embedInNavigationView() -> some View {
        return NavigationView { self }
    }
    
}
