//
//  GetNewsItemsUseCase.swift
//  news
//
//  Created by ashish29t on 04/08/24.
//

import Foundation


class GetNewsItemsUseCase {
    let source: GetNewsItemsSource
    
    internal init(source: any GetNewsItemsSource) {
        self.source = source
    }
    
    func getNewsItems() async -> Result<[NewsItem], GetNewsError> {
        await source.getNewsItems()
    }
}
