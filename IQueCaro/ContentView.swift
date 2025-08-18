//
//  ContentView.swift
//  IQueCaro
//
//  Created by Usuário Convidado on 18/08/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showingPopover = false
    
    var body: some View {
        Color.white
            .ignoresSafeArea(.all)
            .overlay(
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Olá usuário!")
                Text("Este app foi feito pelo Anderson")
                Button("Pressione"){
                    showingPopover = true
                }
                .popover(isPresented: $showingPopover){
                        Text("Teste de caixa de dialogo")
                }
            })
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

var u = 5.isMultiple(of: 15)
// print(u)
