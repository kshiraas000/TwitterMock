//
//  SideMenuView.swift
//  TwitterMock
//
//  Created by Sada Kshirsagar on 12/22/22.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Bruce Wayne")
                    .font(.headline)
                
                Text("@batman")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            UserStatsView()
                .padding(.vertical)
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
