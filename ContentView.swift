//
//  ContentView.swift
//  Trakr
//
//  Created by Andres Bolivar on 12/4/21.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    
    var body: some View {
        ScrollView{
            Image(location.heroPicture)
            .resizable()
            .scaledToFit()
        
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
            
            Text(location.description)
            
        Text("Did you know?")
                .font(.title3)
                .bold()
                .padding(.top)
            
            Text(location.more)
        }
        .navigationTitle("Discover")
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(location: Location.example)
.previewInterfaceOrientation(.portrait)
    }
}
