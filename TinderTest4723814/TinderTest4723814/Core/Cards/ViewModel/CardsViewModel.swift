//
//  CardsViewModel.swift
//  TinderTest4723814
//
//  Created by Geraldine Reichard on 24.08.24.
//

import Foundation
@MainActor
class CardsViewModel: ObservableObject {
    @Published var cardModels = [CardModel]()
    
    private let service: CardService
    
    init(service: CardService) {
        self.service = service
        Task { await fetchCardModels() }
        
    }
    
    func fetchCardModels() async {
        do {
            self.cardModels = try await service.fetchCardModels()
        } catch {
            print ("DEBUG: Failed to fetch card with error \(error)")
        }
    }
    
    func removedCard(_ card: CardModel){
        guard let index = cardModels.firstIndex(where: {$0.id == card.id}) else { return }
        cardModels.remove(at: index)
    }
    
}

