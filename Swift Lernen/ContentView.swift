//
//  ContentView.swift
//  Swift Lernen
//
//  Created by Jonas Mahlburg on 11.09.24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        
        NavigationStack{
            List{
                ForEach(viewModel.topics, id: \.self){ topic in
                    NavigationLink(topic.title) {
                        DetailView(topic: topic)
                    }
                }
                
            }
            .navigationTitle("Swift Lernen")
        }
  
    }
}

#Preview {
    ContentView()
}
