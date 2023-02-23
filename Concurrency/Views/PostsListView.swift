//
//  PostsListView.swift
//  Concurrency
//
//  Created by Jonni Akesson on 2023-02-23.
//


import SwiftUI

struct PostsListView: View {
#warning("remove the forPreview argument or set it to false before uploading to App Store")
    @StateObject var vm = PostsListViewModel(forPreview: false)
    var userId: Int?
    
    var body: some View {
        List {
            ForEach(vm.posts) { post in
                VStack(alignment: .leading) {
                    Text(post.title)
                        .font(.headline)
                    Text(post.body)
                        .font(.callout)
                        .foregroundColor(.secondary)
                }
            }
            .alert("Application Error", isPresented: $vm.showAlert, actions: {
                Button("OK") {}
            }, message: {
                if let errorMessage = vm.errorMessage {
                    Text(errorMessage)
                }
            })
        }
        .overlay(content: {
            if vm.isLoading {
                ProgressView()
            }
        })
        .navigationTitle("Posts")
        .navigationBarTitleDisplayMode(.inline)
        .listStyle(.plain)
        .task {
            vm.userId = userId
            await vm.fetchPosts()
        }
    }
}

struct PostsListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PostsListView(userId: 1)
        }
    }
}
