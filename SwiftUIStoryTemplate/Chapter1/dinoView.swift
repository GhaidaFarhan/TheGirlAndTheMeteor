//
//  dinoView.swift
//  SwiftUIStoryTemplate
//
//  Created by Syeda Hussain on 11/16/23.
//

import Foundation
import SwiftUI

struct dinoView: View {
    var girl1: Girl
    var body: some View {
        
        NavigationStack {
            ZStack {
                Image("classroom")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack {
                
                    Text("When \(girl1.name) first walked into class, the teacher introduces her to everyone and she sat next to a dinosaur named Jack. She began talking to Jack and realized that they actually had a lot in common.")
                        .font(.custom("Jackwrite", size: 25))
                        .background(.teal).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        .clipShape(.rect)
                
                        .padding()
                    Image("dinochair")
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

struct dinoView_Previews: PreviewProvider {
    static var previews: some View {
        dinoView(girl1: Girl(name: "Lisa"))
    }
}
