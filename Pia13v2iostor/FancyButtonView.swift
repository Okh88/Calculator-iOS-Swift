//
//  FancyButtonView.swift
//  Pia13v2iostor
//
//  Created by Malmö Yrkehögskolan on 2024-11-07.
//

import SwiftUI

struct FancyButtonView: View {
    var fancytext  : String
    var fancycolor = Color.blue
    var body: some View {
        
        
        Text(fancytext)
            .foregroundColor(Color.white)
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(fancycolor)
            
    }
}

#Preview {
    FancyButtonView(fancytext: "Test")
}
