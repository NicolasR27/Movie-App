//
//  DetailView.swift
//  Movie App
//
//  Created by Nicolas Rios on 2/12/20.
//  Copyright © 2020 Nicolas Rios. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack {
            PosterView()
            TitleView()
            FilmInfo()
            
            HStack {
                ForEach(0 ..< 3) { item in
                    Image(systemName: "star.fill")
                }
                
                Image(systemName: "star.lefthalf.fill")
                Image(systemName: "star")
                
                Text("(3.5)")
                .bold()
                    .padding(.leading)
                    Spacer()
            }
             .foregroundColor(.yellow)
            
        }
    }
}


struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}

struct   TitleView: View {
    var body: some View {
        HStack {
            Text( "How to Train Your Dragon 3")
                .fontWeight(.heavy)
                .fontWeight(.semibold)
                
            
            Spacer()
            
            Image(systemName:"bookmark")
                .font(.title)
                .padding(.top,4)
                .foregroundColor(.yellow)
                .padding(.trailing)
            
        }
    }
}

struct FilmInfo: View {
    var body: some View {
        HStack {
            Text("1h 44m| Animation,Action| 1 March 2019")
                .foregroundColor(.secondary)
                .padding(.leading)
        }
    }
}
