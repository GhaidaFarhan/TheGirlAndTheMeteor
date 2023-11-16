import SwiftUI


struct Chapter2View: View {
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                
                Image("View")
                    .resizable()
                    .ignoresSafeArea()
               
                
               
                NavigationLink{
                    Plot()
                    
                   
                    
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
   



struct Chapter2View_Preview: PreviewProvider {
    static var previews: some View {
       Chapter2View()
    }
}

