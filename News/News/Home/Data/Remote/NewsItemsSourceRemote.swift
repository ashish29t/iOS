//
//  NewsItemsSourceRemote.swift
//  news
//
//  Created by ashish29t on 04/08/24.
//

import Foundation

protocol NewsItemsSourceRemote {
    func fetchNewsItems() async -> Result<[NewsItem], GetNewsError>
}

class NewsItemsSourceRemoteStub : NewsItemsSourceRemote {
    let response: Result<[NewsItem], GetNewsError>
    
    internal init(response: Result<[NewsItem], GetNewsError>) {
        self.response = response
    }
    
    func fetchNewsItems() async -> Result<[NewsItem], GetNewsError> {
        response
    }
}
