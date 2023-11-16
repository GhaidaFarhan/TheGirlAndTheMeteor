//
//  SlowText.swift
//  TheGirlAndTheMeteor
//
//  Created by Ghaida Farhan on 11/16/23.
//

import SwiftUI


struct SlowText: View {
    let textToPrint: String
    @State private var displayedText : String = ""
    var body: some View {
        VStack{
            Text(displayedText)
            
        }
        .onAppear {
            slowPrint()
        }
    }
    
    func slowPrint() {
        var iterator = textToPrint.makeIterator()
        
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                   if let nextCharacter = iterator.next() {
                       displayedText.append(nextCharacter)
                   } else {
                       timer.invalidate() // Stop the timer when all characters are printed
                   }

//        for character in textToPrint {
//            // Introduce a delay for each character
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
//                // Update the displayed text with the current character
//                displayedText.append(character)
//            }
        }
    }
}

struct LisaSpeakUp_Previews: PreviewProvider {
    static var previews: some View {
        SlowText(textToPrint: "")
    }
}

