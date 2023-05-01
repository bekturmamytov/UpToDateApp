//
//  Article.swift
//  UpToDate
//
//  Created by Bektur Mamytov on 1/5/23.
//

import Foundation

struct Article: Codable {
    let source: Source
    let title: String
    let description: String?
    let url: String
    let urlToImage: String?
    let publishedAt: String
}
