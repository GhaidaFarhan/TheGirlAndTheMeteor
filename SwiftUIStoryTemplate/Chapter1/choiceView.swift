//
//  choiceView.swift
//  SwiftUIStoryTemplate
//
//  Created by Syeda Hussain on 11/16/23.
//

import Foundation
import SwiftUI

struct choiceView: View {
    var girl1: Girl
    var body: some View {
        NavigationStack {
            VStack {
                Text("Choose who \(girl1.name) sees as she enters the \(school1.name) for the first time:")
                    
                    .font(.custom("Jackwrite", size: 20))
                HStack{
                    
                }
            }
        }
    }
}
struct choiceView_Previews: PreviewProvider {
    static var previews: some View {
        choiceView(girl1: Girl(name: "test"))
    }
}
