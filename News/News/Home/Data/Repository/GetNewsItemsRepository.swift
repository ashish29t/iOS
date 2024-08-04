//
//  GetNewsItemsRepository.swift
//  news
//
//  Created by ashish29t on 04/08/24.
//

import Foundation

class GetNewsItemsRepository: GetNewsItemsSource {
    let newsItemsLocalSource: NewsItemsSourceLocal
    let newsItemsRemoteSource: NewsItemsSourceRemote
    
    init(newsItemsLocalSource: any NewsItemsSourceLocal, newsItemsRemoteSource: any NewsItemsSourceRemote) {
        self.newsItemsLocalSource = newsItemsLocalSource
        self.newsItemsRemoteSource = newsItemsRemoteSource
    }
    
    func getNewsItems() async -> Result<[NewsItem], GetNewsError> {
        let getNewsItemsLocalResponse = await self.newsItemsLocalSource.fetchNewsItems()
        
        switch getNewsItemsLocalResponse {
        case let .success(newsItems):
            if newsItems.isEmpty {
                return await self.newsItemsRemoteSource.fetchNewsItems()
            }
            return getNewsItemsLocalResponse
        case .failure:
            return await self.newsItemsRemoteSource.fetchNewsItems()
        }
    }
}
