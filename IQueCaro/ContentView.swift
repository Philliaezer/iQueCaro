//
//  ContentView.swift
//  IQueCaro
//
//  Created by Usuário Convidado on 18/08/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showingPopover = false
    @State private var searchText: String = ""
    let allItems = ["Apple", "Banana", "Orange", "Grape", "Pineapple"]
    
    var filteredItems: [String] {
        if searchText.isEmpty {
            return allItems
        } else {
            return allItems.filter { $0.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    var body: some View {
        Color.white
            .edgesIgnoringSafeArea(.all)
            .overlay(
                ZStack {
                    VStack {
                        
                        TabView {
                                NavigationStack {
                                    List(filteredItems, id: \.self) { item in
                                        Text(item)
                                    }
                                    .searchable(text: $searchText, prompt: "Pesquise coisas caras")
                                    .navigationTitle("iQueCaro")
                                    
                                    
                                    /*.toolbarBackground(.teal, for: .navigationBar)
                                     .toolbarBackground(.visible, for: .navigationBar)*/
                                }
                                .tabItem {
                                    Label("Inicio", systemImage: "dollarsign.circle.fill")
                                }
                            
                            VStack {
                                Text("Settings Content")
                                Spacer()
                            }
                            .tabItem {
                                Label("Configurações", systemImage: "gearshape.fill")
                            }
                        }
                    }
                }
                
            /*
             VStack {
                HStack {
                    Text("iQueCaro")
                }
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
            }
             */
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

var u = 5.isMultiple(of: 15)
// print(u)

struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
