//
//  following.swift
//  MyChapter
//
//  Created by Ghaida Farhan on 11/17/23.
//

import SwiftUI

struct following: View {
    @State private var offset1 = 0.0
    @State private var offset2 = 0.0
    @State private var WhatIsHappening = false
    
    private var animation: Animation {
        .easeIn
        .speed(0.1)
        .repeatForever(autoreverses: false)
    }
    var body: some View {
     
            ZStack{
                Color.gray
                    .ignoresSafeArea()
                
                Image("meteor")
                    .resizable()
                    .frame(width:300 ,height: 300)
                    .position(x:260,y:90)
                    .offset(x: offset1)
                    .onAppear() {
                        withAnimation(self.animation) {
                            self.offset1 = -100.0
                        }
                    }
                
                
                Image("scaryDino")
                    .resizable()
                    .frame(width:300 ,height: 200)
                    .position(x:150,y:400)
                    .offset(x: offset2)
                    .onAppear() {
                        withAnimation(self.animation) {
                            self.offset2 = 300.0
                        }
                    }
                
                
                    .padding()
                Button("Are you wondering what is going on??"){
                    self.WhatIsHappening = true
                    
                    
                    
                    
                } .padding()
                    .foregroundColor(Color.white)
                    .background(Color.black)
                    .cornerRadius(12)
                
                
                    .popover(isPresented:   $WhatIsHappening) {
                        SlowText(textToPrint:"In the midst of their play, a meteor shook the land, and the sky turned dark. Jack, alarmed, looked at Lisa, sensing danger. 'Lisa, something's wrong. I feel it,' he roared. Looking up, they saw meteors heading for their dinosaur friends. Panic spread,the other dinosours started to run looking for somewhere safe,then Jack turned to Lisa, 'We need your help. Your smarts can save us. Will save us and figure out how to protect everyone, please? I know thats hard for you after what they did to you' . Please just think about it , I know you you will take the right decision..")
                            .padding()
                            .bold()
                            .background(Color.gray)
                            .cornerRadius(12)
                    }.position(x:200,y:700)
            
            }
        }
    }

struct following_Previews: PreviewProvider {
    static var previews: some View {
        following()
    }
}
