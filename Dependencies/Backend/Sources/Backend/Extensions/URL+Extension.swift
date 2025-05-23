//
//  URL+Extension.swift
//
//
//  Created by MaTooSens on 21/02/2024.
//

import Foundation

extension URL {
    init?(
        string: String,
        with parameters: [String: Any]
    ) {
        guard var urlComponents = URLComponents(string: string) else {
            return nil
        }

        urlComponents.queryItems = parameters.map { URLQueryItem(name: $0.key, value: "\($0.value)") }

        guard let url = urlComponents.url else {
            return nil
        }

        self = url
    }
}
