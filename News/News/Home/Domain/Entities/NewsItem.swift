//
//  NewsItem.swift
//  news
//
//  Created by ashish29t on 04/08/24.
//

import Foundation

struct NewsItem: Codable {
    let title: String?
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
    
    internal init(title: String? = nil, description: String? = nil, url: String? = nil, urlToImage: String? = nil, publishedAt: String? = nil) {
        self.title = title
        self.description = description
        self.url = url
        self.urlToImage = urlToImage
        self.publishedAt = publishedAt
    }
}
