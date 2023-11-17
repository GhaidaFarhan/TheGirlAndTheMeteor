//
//  BullingDinos.swift
//  MyChapter
//
//  Created by Ghaida Farhan on 11/16/23.
//

import SwiftUI

struct BullingDinos: View {
    @State private var wantToSeeTheComments = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color.teal
                    .ignoresSafeArea()
                
                VStack{
                    Image("angryDino")
                        .resizable()
                        .frame(width:300 ,height: 200)
                        .position(x:200 , y:90)
                    // they  hurts lisa a lot so i just put the comments in a popover so i don't remind her about it ..
                    SlowText(textToPrint: "Lisa was a very Kind girl even when the Dinasours were complaining about her . She had a good intention , she tried to make a good friendship with them , but they didn't let her , and they told her to leave because it makes no sence tobe a friend with a human , which break her alot ... \n lisa told Jack some of the other dinosaurs are being a mean i don't know why ... Jack said ohh no, that's not cool. What are they saying? 'They're saying silly things, like it's strange for a girl to be friends with a dinosaur.' Lisa said . he replayed: that's not true!I think it's awesome. We make a fantastic team! then Lisa said : I know, right? But their words are starting to bother me. I even got a bit mad about it. Jack tried to calm Lisa down, he said 'Aw, that's not good. You should never feel mad. What happened?'")
                    
                        .padding()
                        .bold()
                    
                    Image("Lisa2")
                        .resizable()
                        .frame(width: 130,height: 180)
                    Button("see their comment?"){
                        self.wantToSeeTheComments = true
                        
                        
                        
                        
                    } .padding()
                        .foregroundColor(Color.white)
                        .background(Color.black)
                        .cornerRadius(12)
                    
                    
                        .popover(isPresented:   $wantToSeeTheComments) {
                            Text(" Dinnn!! is that a human right here?? \n\n What are we supposed to do with her ?!   that's annoying ! \n\n Are we gonna deal with their realationship ? He can't be with her 😀 \n\n Roar! she doesn't even look cool! \n\n I wish she leaves as soon as possible... \n\n Dino she's acting cute just to fool us ! \n\n We have to talk with Jack he must be kidding ")
                                .padding()
                                .bold()
                                .background(Color.gray)
                                .cornerRadius(12)
                        }
                }.padding()
                
                NavigationLink{
                    following()
                        
                    
                
                }label: {
                    Label("next ", systemImage: "")
                        .foregroundColor(Color.white)
                            
                }.position(x: 350,y:715)
                
                
               
                
            }
        }
    }
}

struct BullingDinos_Previews: PreviewProvider {
    static var previews: some View {
        BullingDinos()
    }
}
