//
//  ContentView.swift
//  WCardGame
//
//  Created by Nich on 6/15/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card3"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    VStack {
                        
                        Text("Player1")
                            .font(.headline)
                            .padding([.bottom, .trailing], 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                        
                    }
                    
                    Spacer()
                    VStack {
                        Text("Player2")
                            .font(.headline)
                            .padding([.bottom, .trailing], 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal() {
        // Randomize players cards
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // Randomize cpus cards
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // Update scores
        if playerCardValue > cpuCardValue {
            
            playerScore += 1
        } else if cpuCardValue > playerCardValue {
            
            cpuScore += 1
        } else {
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
