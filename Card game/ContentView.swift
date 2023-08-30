//
//  ContentView.swift
//  Card game
//
//  Created by Trien Vo Hong on 30/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image ("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                Spacer()

                Image("button")
                
                Spacer()

                HStack {
                    Spacer()
                    VStack{
                        
                        Text("Player 1")
                            .font(.headline)
                            .padding(.bottom,10)
                            
                        Text("0")
                            .font(.largeTitle)
                            
                    }
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom,10)
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
