//
//  PostData.swift
//  H4X News
//
//  Created by NazarStf on 19.05.2023.
//

import Foundation

struct Results: Decodable {
	let hits: [Post]
	
}

struct Post: Decodable, Identifiable {
	var id: String {
		return objectID
	}
	let objectID: String
	let points: Int
	let title: String
	let url: String?
}
