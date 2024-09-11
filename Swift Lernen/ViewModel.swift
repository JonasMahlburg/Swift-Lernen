//
//  ViewModel.swift
//  Swift Lernen
//
//  Created by Jonas Mahlburg on 11.09.24.
//

import Foundation

class ViewModel: ObservableObject {
    let topics: [Topic]
    
    init(){
        guard let url = Bundle.main.url(forResource: "data", withExtension: "json") else{
            topics = []
            return
        }
        do{
            let data = try Data(contentsOf: url)
            topics = try JSONDecoder().decode([Topic].self, from: data)
        } catch{
            print("Fehler beim Laden des Inhalts: \(error)")
            topics = []
        }
    }
}
