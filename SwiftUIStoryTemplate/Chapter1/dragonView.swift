//
//  dragonView.swift
//  SwiftUIStoryTemplate
//
//  Created by Syeda Hussain on 11/16/23.
//

import Foundation
import SwiftUI

struct dragonView: View {
    var girl1: Girl
    var body: some View {
        
        NavigationStack {
            ZStack {
                Image("classroom")
                    .resizable()
                    .ignoresSafeArea()
                VStack {
                    
                    Text("When \(girl1.name) first walked into class, she sat down and looked around. All around her were large dragons of all kinds. The teacher introduced her to the class and she sat next to a dragon named Jack. She began talking to Jack and realized that they actually had a lot in common.")
                        .font(.custom("Jackwrite", size: 20))
                        .padding()
                        .background(.teal).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        .clipShape(.rect)
                
                        .padding()
                    Image("dragonchair")
                        .resizable()
                    
                    Text("Continue on to Chapter Two")
                        .font(.custom("Jackwrite", size: 25))
                        .background(.teal).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        .clipShape(.rect)
                    
                    
                }
            }
        }
    }
}

struct dragonView_Previews: PreviewProvider {
    static var previews: some View {
        dragonView(girl1: Girl(name: "Lisa"))
    }
}

