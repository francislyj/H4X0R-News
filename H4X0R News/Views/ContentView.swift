//
//  ContentView.swift
//  H4X0R News
//
//  Created by user on 2024/8/9.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts, rowContent: { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            })
            .navigationTitle("H$X0R NEWS")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
        
        
    }
}
//
//struct Post: Identifiable {
//    let id: String
//    let title: String
//}

//let posts = [
//    Post(id: "1", title: "hello"),
//    Post(id: "2", title: "hello2"),
//    Post(id: "3", title: "hello3"),
//]

#Preview {
    ContentView()
}
