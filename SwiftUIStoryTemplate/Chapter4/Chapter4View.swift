import SwiftUI

struct Chapter4View: View {
    @State private var userComment: String = ""
    @State private var isSheetPresented: Bool = false
    @State private var showAlert: Bool = false
    

    var body: some View {
        NavigationStack{
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.red, .green]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .ignoresSafeArea()
                VStack {
                    Image("School")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                        
                    Text("Back To school - Moral of The Story")
                        .font(.title)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding()
                    Text("Be kind to people and have sympathy for those who are different. If you're kind towards people, they'll be kind towards you, and maybe someday you might need their help with something, and being kind will only help you in that situation.")
                        .multilineTextAlignment(.center)
                        
                    Text("In the end, as the school year continued, Lisa's compassionate nature began to inspire others. The ripple effect of her kindness spread throughout the school, and slowly but surely, the atmosphere began to change.")
                        .multilineTextAlignment(.center)

                    Button(action: {
                        isSheetPresented.toggle()
                    }) {
                        Text("The End")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(8)
                    }
                    .padding()

                    Spacer()
                    
                }
                .padding()
                .navigationTitle("Chapter 4")
                .sheet(isPresented: $isSheetPresented) {
                    VStack {
                        Text("The End")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding()
                        
                        Text("Thank You For Reading")
                            .font(.headline)
                            .padding()
                        
                        TextField("Give us some feedback...", text: $userComment)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        
                        
                        // Go Back button doesn't work
                        
                        Button(action: {
                                showAlert = true
                        
                            }) {
                            Text("Go Back")
                        }
                        .alert(isPresented: $showAlert) {
                            Alert(
                                title: Text("Confirmation"),
                                message: Text("Do you want to return to the home page?"),
                                primaryButton: .default(Text("Yes")) {
                                    
                                    isSheetPresented = false
                                },
                                secondaryButton: .cancel(Text("No"))
                            )
                        }
                        Spacer()
                    }
                    .padding()
            }
            }
        }
    }
}

struct Chapter4View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter4View()
    }
}

