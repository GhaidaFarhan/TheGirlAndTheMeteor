//
//  BullingDino.swift
//  TheGirlAndTheMeteor
//
//  Created by Ghaida Farhan on 11/16/23.
//

import SwiftUI

struct BullingDino: View {
    var body: some View {
        
                ZStack{
                    Color.gray
                        .ignoresSafeArea()
                    
                    VStack{
                        Image("angryDino")
                            .resizable()
                            .frame(width:300 ,height: 250)
                            .position(x:190 , y:120)
                    }
                    
                    
                    
                    
                }
            }
        }

    


struct BullingDino_Previews: PreviewProvider {
    static var previews: some View {
        BullingDino()
    }
}
