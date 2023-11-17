//
//  movingDayView.swift
//  SwiftUIStoryTemplate
//
//  Created by Syeda Hussain on 11/16/23.
//

import Foundation
import SwiftUI

struct Land {
    var placeName: String
}
let landName: [String] = ["Creature Island","Mystery Island","New Beginnings Island"]
let Land1 = Land(placeName: landName.randomElement() ?? "no name land")

struct movingDayView: View {
    var girl1: Girl
    var body: some View {
        NavigationStack {
            ZStack{
                Image("island")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    Text("One day \(girl1.name)'s parents announced that they are moving the family to a place called \(Land1.placeName).")
                        .font(.custom("Jackwrite", size: 20))
//                        .foregroundStyle(Color(.white))
                                        .padding()
                                        .foregroundStyle(.white)
                                        .background(.teal).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                                        .clipShape(.capsule)


                        .padding()
                    Spacer()
                        
                    Image("lisa")
                        .resizable()
                        .frame(width: 150,height: 200)
                    
                    Text("\(girl1.name) was ecstatic about the news. \(girl1.name)'s  parents moved the family to \(Land1.placeName). It was unlike anywhere she had ever been. \(girl1.name) was most excited to start school and make new friends.")
                        
                        .font(.custom("Jackwrite", size: 20))
                        
                        .padding()
                        .foregroundStyle(.white)
                        .background(.teal).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        .clipShape(.capsule)
                    NavigationLink {
                        firstdayView(girl1: girl1)
                    } label: {
                        Label("", systemImage: "arrowshape.forward.fill")
                            .font(.custom("Starborn", size: 25))
                    }
                    .buttonStyle(GrowingButton())
                    
                    
                }
            }
        }
    }
}

struct movingDayView_Previews: PreviewProvider {
    static var previews: some View {
        movingDayView(girl1: Girl(name: "Lisa"))
    }
}






