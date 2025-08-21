//
//  CardListView.swift
//  IQueCaro
//
//  Created by Usuário Convidado on 21/08/25.
//

import SwiftUI

struct CardListView: View {
    var cardImage: String?
    var cardTitle: String
    var cardDesc: String
    
    init(_ title: String, _ description: String, _ image: String? = ".") {
        self.cardImage = image ?? "."
        self.cardTitle = title
        self.cardDesc = description
    }
    
    var body: some View {
        
        HStack {
            if self.cardImage != "." {
                Image(String(self.cardImage ?? "."))
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80, alignment: .center)
            }
                
            VStack(alignment: .leading, spacing: 5) {
                Text("\(self.cardTitle)")
                    .font(.title2)
                Text("\(self.cardDesc)")
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
    }
}

struct CardListView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView("um", "dois", "tres")
    }
}
