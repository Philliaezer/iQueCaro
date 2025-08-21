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
    
    let allItems = ["Sobre o iQueCaro", "Mensagens", "Documentos", "Arquivos", "Sua Conta"]
    let expensiveList = ["iMac Pro", "iPad Pro", "iPhone 16 Pro Max", "Apple Watch Ultra", "iMeuDeusMeuBolso"]
    let expensiveIcons = ["imac", "ipad", "iphone", "watch", "money"]
    let allIcons = ["folder.badge.plus", "tray.full", "doc.on.clipboard", "paperclip", "person.crop.circle"]
    
    var filteredItems: [String] {
        if searchText.isEmpty {
            return allItems
        } else {
            return allItems.filter { $0.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    var filteredItemsStore: [String] {
        if searchText.isEmpty {
            return expensiveList
        } else {
            return expensiveList.filter { $0.localizedCaseInsensitiveContains(searchText)
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
                            
                            // ======== INICIO ========
                            NavigationStack {
                                List {
                                    ForEach(Array(filteredItemsStore.enumerated()), id: \.element) { index, item in
                                        if item == "Sobre o iQueCaro" {
                                            NavigationLink {
                                                SecondView(item)
                                            } label: {
                                                CardListView("iMac Pro", "Este é um iMac Pro")
                                            }
                                        } else {
                                            NavigationLink {
                                                SecondView(item, expensiveIcons[index])
                                            } label: {
                                                CardListView(item, "descrição", expensiveIcons[index])
                                            }
                                        }
                                    }
                                    
                                    .listRowBackground(Color.clear)
                                }
                                .searchable(text: $searchText, prompt: "Pesquise coisas caras")
                                .navigationTitle("iQueCaro")
                            }
                            .tabItem {
                                Label("Inicio", systemImage: "dollarsign.circle.fill")
                            }
                            
                            // ======== CONFIGURAÇÕES ========
                            NavigationStack {
                                VStack {
                                    List {
                                        Section(header: Text("Gerais")){
                                            ForEach(Array(filteredItems.enumerated()), id: \.element) { index, item in
                                                if item == "Sobre o iQueCaro" {
                                                    NavigationLink {
                                                        SecondView(item)
                                                    } label: {
                                                        Image(systemName: "dollarsign.circle.fill")
                                                        Text(item)
                                                    }
                                                } else {
                                                    NavigationLink {
                                                        SecondView(item)
                                                    } label: {
                                                        Image(systemName: allIcons[index])
                                                        Text(item)
                                                    }
                                                }
                                            }
                                        }
                                        
                                        Section(header: Text("Da conta")){
                                            ForEach(Array(filteredItems.enumerated()), id: \.element) { index, item in
                                                if item == "Sobre o iQueCaro" {
                                                    NavigationLink {
                                                        SecondView(item)
                                                    } label: {
                                                        Image(systemName: "dollarsign.circle.fill")
                                                        Text(item)
                                                    }
                                                } else {
                                                    NavigationLink {
                                                        SecondView(item)
                                                    } label: {
                                                        Image(systemName: allIcons[index])
                                                        Text(item)
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    
                                    Spacer()
                                }
                                .navigationTitle("Config.")
                            }
                            .tabItem {
                                Label("Configurações", systemImage: "gearshape.fill")
                            }
                        }
                    }
                }
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
