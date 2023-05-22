//
//  ContentView.swift
//  H4X News
//
//  Created by NazarStf on 19.05.2023.
//

import SwiftUI

struct ContentView: View {
	
	@ObservedObject var networkManager = NetworkManager()
	
	var body: some View {
		NavigationView {
			List(networkManager.posts) { post in
				NavigationLink(destination: DetailView(url: post.url ?? "error")) {
					HStack {
						Text(String(post.points))
						Text(post.title)
					}
				}
			}
			.navigationBarTitle("H4X News")
		}
		.onAppear {
			self.networkManager.fetchData()
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

