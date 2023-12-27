//
//  ContentView.swift
//  TipKitExample
//
//  Created by Fatih Durmaz on 25.12.2023.
//

import SwiftUI
import SwiftUISnackbar
import TipKit

struct ContentView: View {
    
    @State private var viewModel = UserViewModel()
    @State private var isSortingAscending = true
    @State private var isShowingSnackbar = false
    @State private var text: String = ""
    
    var userSortTip = UserSortTip()
    var addressSortTip = AdressSortTip()
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithDefaultBackground()
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        NavigationStack {
            List {
                TipView(addressSortTip)
                
                ForEach(Array(viewModel.users.enumerated()), id: \.element.id) { index, user in
                    HStack {
                        Text("\(index + 1)")
                            .bold()
                            .padding()
                            .foregroundColor(.white)
                            .background(.brown)
                            .clipShape(.circle)
                        VStack(alignment: .leading) {
                            Label(user.name, systemImage: "person.circle")
                                .foregroundColor(.primary)
                            Label(user.email, systemImage: "mail")
                                .font(.footnote)
                                .foregroundColor(.primary)
                        }
                        Spacer()
                        Image(systemName: "info.circle")
                            .font(.title)
                            .onTapGesture {
                                isShowingSnackbar = true
                                text = user.address
                            }
                        
                    }
                }
            }
            .snackbar(isShowing: $isShowingSnackbar, title: "Adress", text: text, style: .default)
            .navigationTitle("Tip Kit Example")
            .toolbar{
                Button("Sort", systemImage: "arrow.up.arrow.down") {
                    isSortingAscending.toggle()
                    viewModel.sortUsers(ascending: isSortingAscending)
                }
                .tint(.brown)
                .buttonStyle(.borderedProminent)
                .popoverTip(userSortTip)
                
            }
        }
    }
    
}

struct UserSortTip: Tip {
    var title: Text {
        Text("Sort by Name")
    }
    
    var message: Text?{
        Text("Users is sorted by name")
    }
    
    var image: Image?{
        Image(systemName: "arrow.up.arrow.down")
    }
}

struct AdressSortTip: Tip {
    var title: Text {
        Text("Click to Info Icon")
    }
    
    var message: Text?{
        Text("You can see users addresses")
    }
    
    var image: Image?{
        Image(systemName: "info.circle")
    }
}

#Preview {
    ContentView()
}
