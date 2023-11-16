//
//  Plot.swift
//  TheGirlAndTheMeteor
//
//  Created by Ghaida Farhan on 11/15/23.
//

import SwiftUI

struct Plot: View {
    

    var body: some View {
        NavigationStack {
            ZStack{
                
                Color.brown
                    .ignoresSafeArea()
                
                VStack{
                    
                    
                    Text("   Jack and lisa start hanging out together   ")
                        .padding()
                        .font(.title)
                        .bold()
                        .position(x:190 , y:70 )
                
                    
                    VStack{
                        
                        SlowText(textToPrint: "Jack: Roar! Hey there, Lisa! \n Lisa: Hi Jack! You're such a friendly dinosaur \n Jack: Thanks, Lisa! It's super cool hanging out with human! \n Lisa: Yeah, Jack! We've been having so much fun together")

                        
                           
                    }
                    .padding(.top)
                        
                    HStack{
                        Image("Jack")
                            .resizable()
                            .frame(width: 200 , height: 200)
                        
                        
                        Image("Lisa")
                            .resizable()
                            .frame(width: 120 , height: 200)
                            //.position(x: 290 , y:550)
                        
                        
                           // .position(x: 120 , y:550)
                        
                    }
                    .padding(.bottom, 30)
                        NavigationLink{
                            BullingDino()
                            
                        }label: {
                            
                            Label("Bulling Lisa?..", systemImage: "bolt.heart.fill")
                                .padding()
                                .foregroundColor(Color.white)
                                .background(Color.black)
                                .cornerRadius(12)
                            
                        }
                        
                    }
                    
                
            }
        }
        
        
        
        
    }
    
    
    
}



struct Plot_Previews: PreviewProvider {
    static var previews: some View {
        Plot()
    }
}

