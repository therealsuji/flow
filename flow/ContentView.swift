//
//  ContentView.swift
//  flow
//
//  Created by Alakazam on 11/11/19.
//  Copyright © 2019 esper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Hello World");
            Button(action: {songQuery.getAllSongs()}, label: {Text("Get all Songs")})

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
