//
//  firstdayView.swift
//  SwiftUIStoryTemplate
//
//  Created by Syeda Hussain on 11/16/23.
//

import Foundation
import SwiftUI

struct School {
    var name: String
}
let schoolName: [String] = ["Island Prep","School of Creatures","Jurassic Elementary"]
let school1 = School(name: schoolName.randomElement() ?? "Jurrasic elementary" )





struct firstdayView: View {
    var girl1: Girl
    var body: some View {
        NavigationStack {
            VStack {
                
                Spacer()
                Text("\(girl1.name)'s parents moved the family to \(Land1.placeName). It was unlike anywhere Lisa had ever been. Lisa was most excited to start school and make new friends at \(school1.name).")
                    .font(.custom("Jackwrite", size: 23))
                    .padding()
                Spacer()
                Spacer()
                Spacer()
        
                
                Image("building")
                    .resizable()
                
                Text("\(girl1.name) had left her friends behind but it didn’t matter because she enjoyed meeting new kids that she could play outside with.")
                    .font(.custom("Jackwrite", size: 23))
                    .padding()
                    
           Spacer()
                NavigationLink {
                    
                    choiceView(girl1: girl1)
                } label: {
                    Label("", systemImage: "arrowshape.forward.fill")
                        .font(.custom("Starborn", size: 25))
                }
                .buttonStyle(GrowingButton())
                
            }
        }
    }
}

struct firstdayView_Previews: PreviewProvider {
    static var previews: some View {
        firstdayView(girl1: Girl(name: "Lisa"))
    }
}
