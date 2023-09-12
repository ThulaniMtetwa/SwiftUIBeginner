//
//  ContentView.swift
//  SwiftUIBeginner
//
//  Created by Thulani Mtetwa on 2023/09/12.
//

import SwiftUI

enum Emojis: String, CaseIterable {
    case foo
    case bar
    case suu
}
struct ContentView: View {
    //MARK: Properties
    @State var selection: Emojis = .suu
    //MARK: Renderer
    var body: some View {
        NavigationView {
            VStack(spacing: 5.0){
                Text(selection.rawValue)
                    .font(.title)
                    .fontWeight(.thin)
                Picker("Select Value", selection: $selection) {
                    ForEach(Emojis.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }.padding(.horizontal, 6.0).pickerStyle(.segmented)
            }
            .navigationTitle("Sample")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
