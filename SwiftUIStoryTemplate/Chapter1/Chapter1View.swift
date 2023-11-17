import SwiftUI


struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.green)
            .foregroundStyle(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}


struct Chapter1View: View {
    
    var body: some View {
        NavigationStack{
            ZStack{
                Image("landscape")
                    .resizable()
                    .ignoresSafeArea()
                VStack {
                    Text("The Girl And The Meteor")
                        .font(.custom("Starborn", size: 35))
                        .padding()
                    Spacer()
                    
                    NavigationLink {
                        firstPageView()
                    } label: {
                        Label("Once Upon A Time...", systemImage: "")
                            .font(.custom("Starborn", size: 20))
                    }
                    .buttonStyle(GrowingButton())
                }
            }
        }
                
            }
            
        }
    
    
    
    struct Chapter1View_Previews: PreviewProvider {
        static var previews: some View {
            Chapter1View()
        }
    }
    
    
    

