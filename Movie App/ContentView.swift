//
//  ContentView.swift
//  Movie App
//
//  Created by Nicolas Rios on 2/12/20.
//  Copyright © 2020 Nicolas Rios. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination:(PosterView)()){
                    PosterView()
                       
                        
                    Text("How to train your Dragon 3")
                        .font(.title)
                        .fontWeight(.semibold)
                }
            }
            
           
        }
           
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PosterView: View {
    var body: some View {
        Image("poster")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(12)
            .padding()
            
    }
}
