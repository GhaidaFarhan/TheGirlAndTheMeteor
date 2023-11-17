//
//  ContentMyView.swift
//  SwiftUIStoryTemplate
//
//  Created by Syeda Hussain on 11/17/23.
//

import SwiftUI

struct ContentMyView: View {
    var body: some View {
        
        NavigationStack{
            ZStack{
                
                Image("View")
                    .resizable()
                    .ignoresSafeArea()
                
                
                
                NavigationLink{
                    plot()
                    
                    
                    
                }label: {
                    
                    // put a VStack to have the button in the bottom
                    VStack{
                        
                        Spacer()
                        
                        
                        Label("Let's Know What Happen!", systemImage: "arrowshape.forward.fill")
                        
                            .padding()
                            .foregroundColor(Color.green)
                            .background(Color.white)
                            .cornerRadius(12)
                        
                        
                    }
                    
                }
            }
        }
    }
}
    
        struct ContentMyView_Previews: PreviewProvider {
            static var previews: some View {
                ContentMyView()
            }
        }
