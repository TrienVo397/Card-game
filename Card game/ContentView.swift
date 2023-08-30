//
//  ContentView.swift
//  Card game
//
//  Created by Trien Vo Hong on 30/08/2023.
//

import SwiftUI

struct ContentView: View {// decla
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
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
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {// button for deal
                    deal()
                } label: {
                    Image("button")
                    
                }
                
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack{
                        
                        Text("Player 1")
                            .font(.headline)
                            .padding(.bottom,12)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom,10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
            }
            }
            
        }
    
    func deal(){
        //randomize the player card
        var playCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playCardValue)
        
        // randomize the cpu card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        // update the result
        if playCardValue > cpuCardValue{
            playCardValue++
        }
        if else
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
