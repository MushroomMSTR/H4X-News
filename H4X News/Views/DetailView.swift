//
//  DetailView.swift
//  H4X News
//
//  Created by NazarStf on 19.05.2023.
//

import SwiftUI

struct DetailView: View {
	
	let url: String
	
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.apple.com")
    }
}
