//
//  ContentView.swift
//  MoviesApp
//
//  Created by Aaron Garman on 7/24/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var movies: [Movie] = [] // store movies retrieved from API
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear(perform: {
            Task {
                await fetchMovies()
            }
        })
    }
    
    // function to retrieve movie data from API
    
    private func fetchMovies() async {
        
        // url for TMDB movies database "now playing" endpoint
        
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=b1446bbf3b4c705c6d35e7c67f59c413&language=en-US")!
        do {

            // data request
            
            // can loop through api w/ page numbers to get more movies - would use variable in api string for page number
            
            let (data, _) = try await URLSession.shared.data(from: url)
            let moviesResponse = try JSONDecoder().decode(MoviesResponse.self, from: data)

            // get response data
            
            self.movies = moviesResponse.results

            // print data for each movie - for testing
            
            printMovies()
 
        } catch {
            print(error.localizedDescription)
        }
    }
    
    // function to print out all data for each movie
    
    private func printMovies() {
        
        print("total movies: \(movies.count)\n")
        
        for movie in movies {
            print("Id: \(movie.id)")
            print("Title: \(movie.title)")
            print("Release Date: \(movie.releaseDate)")
            print("Overview: \(movie.overview)")
            print("Vote Average: \(movie.voteAverage)")
            print("Poster Path: \(movie.posterPath)")
            print("Backdrop Path: \(movie.backdropPath)\n")
        }
    }
}

#Preview {
    ContentView()
}
