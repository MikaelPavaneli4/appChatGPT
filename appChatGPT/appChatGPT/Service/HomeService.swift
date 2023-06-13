//
//  File.swift
//  appChatGPT
//
//  Created by Mikael Rodrigues on 13/06/23.
//

import Foundation
import OpenAISwift

class HomeService {
    func sendMessage(text: String, completion: @escaping (Result<String, OpenAIError>) -> Void) {
        OpenAISwift(authToken: "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").sendCompletion(with: text, model: .gpt3(.davinci), maxTokens: 4000) { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let data):
                    let message: String = data.choices?.first?.text ?? ""
                    completion(.success(message))
                case .failure(let failure):
                    completion(.failure(failure))
                }
            }
        }
    }
}
