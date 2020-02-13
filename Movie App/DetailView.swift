

import SwiftUI

struct DetailView: View {
    var body: some View {
        ScrollView(.vertical) {
            PosterView()
            TitleView()
            FilmInfo()
            RatingView()
            PlotView()
            
            HStack {
                Text("Cast")
                Spacer()
                Button(action:{
                  //
                }) {
                    Text("See all")
                    
                }
                .padding()
                .foregroundColor(.secondary)
                .clipShape(Capsule())
    }

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

struct RatingView: View {
    var body: some View {
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
        .padding(.leading)
        .foregroundColor(.yellow)
    }
}

struct PlotView: View {
    var body: some View {
        VStack{
            HStack {
                Text("Storyline")
                    .fontWeight(.bold)
                Spacer()
            }
            .padding(.bottom)
            
            Text(" All seems well on the island of Berk as Vikings and dragons live together in peace and harmony. Now a Viking leader, Hiccup finds himself increasingly attracted to Astrid, while his beloved dragon Toothless meets an enchanting creature who captures his eye. When the evil Grimmel launches a devious plan to wipe out all the dragons, Hiccup must unite both clans to find Caldera, a hidden land that holds the key to saving Toothless and his flying friends.")
            
        }
        .padding()
    }
}
