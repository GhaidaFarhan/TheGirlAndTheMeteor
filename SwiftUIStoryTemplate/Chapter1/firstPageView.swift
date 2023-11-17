//
//  firstPageView.swift
//  SwiftUIStoryTemplate
//
//  Created by Syeda Hussain on 11/15/23.
//

import Foundation
import SwiftUI

struct Girl {
    var name: String
}
let girlNames: [String] = ["Lisa","Kim","June"]


struct firstPageView: View {
    @State var refresh: Bool = false
    func update() {
        refresh.toggle()
    }
   
    @State var girl1 = Girl(name: girlNames.randomElement() ?? "Lisa")
    var body: some View {
        NavigationStack {
            VStack{
                Text("ChApter One")
                    .font(.custom("Starborn", size: 25))
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                    .bold()
                Text("Once upon a time there was")
                    .font(.custom("Jackwrite", size: 25))
                Text("a girl named \(girl1.name).")
                    .font(.custom("Jackwrite", size: 25))
                
                Image("standing")
                    Spacer()
                Button("change Name"){
                    let new = girlNames.randomElement() ?? "June"
                    girl1.name = new
                    
                }.buttonStyle(.bordered)
                    .foregroundColor(.black)
                    .font(.custom("Jackwrite", size: 20))
                Spacer()
                
                NavigationLink {
                    movingDayView(girl1:girl1)
                } label: {
                    Label("", systemImage: "arrowshape.forward.fill")
                        .font(.custom("Starborn", size: 25))
                }
                .buttonStyle(GrowingButton())            }
        }
    }
}
struct firstPageView_Previews: PreviewProvider {
    static var previews: some View {
        firstPageView()
    }
}
