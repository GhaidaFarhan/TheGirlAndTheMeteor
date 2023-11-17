import SwiftUI

struct Chapter3View: View {
    @State private var userDecision = ""

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()

                VStack {
                    Image("Ship")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 350, height: 200)
                        .cornerRadius(20)
                        .shadow(radius: 10)

                    Text("To The Rocket Ship We Go")
                        .font(.custom("AvenirNext-Bold", size: 25))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding()
                        .foregroundColor(.white)

                    Text("Lisa, we need you. You are the only one that can fit in the rocket. Lisa said to Jack I'm not sure that I want to save everyone. Lisa walked away from Jack to think about her decision")
                        .foregroundColor(.white)
                        
                    Text("After thinking it over, she asked Jack what would happen if she says no. Jack said that if you don't help the water will dry. Lisa decided to go to the rocket and save Jack and the Dinosaurs because she did not want to lose Jack.")
                        .foregroundColor(.white)
                        .fixedSize(horizontal: false, vertical: true) 
                    
                    Text("Do you think Lisa made the right decision?")
                        .foregroundColor(.white)
                    Text("If typed 'Yes', you will see scenario 1")
                        .foregroundColor(.white)

                    TextField("Enter your decision...", text: $userDecision)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .foregroundColor(.black)

                    NavigationLink(destination: Chapter4View(), isActive: shouldNavigate) {
                        
                    }
                    .hidden()
                    
                    Spacer()
                }
                .padding()
                .navigationTitle("Chapter 3")
                .frame(maxWidth: .infinity)
            }
        }
    }

    private var shouldNavigate: Binding<Bool> {
        Binding(
            get: { userDecision.lowercased() == "yes" },
            set: { _ in }
        )
    }

    private func navigateToNextChapter() {
        shouldNavigate.wrappedValue = true
    }
}

struct Chapter3View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter3View()
    }
}


