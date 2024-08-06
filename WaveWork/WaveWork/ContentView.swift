import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack {
                    Text("wavework")
                        .fontWeight(.bold)
                        .dynamicTypeSize(.xxxLarge)
                        .position(CGPoint(x: geometry.size.width * 0.5, y:50))
                        
                    
                    NavigationLink(destination: NewScreenView()) {
                        Text("blocked applications")
                            .padding(18)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(12)
                    }
                    .position(CGPoint(x: geometry.size.width * 0.5, y: geometry.size.height * -0.1))
                    
                    NavigationLink(destination:SocialView()){
                        Text("social")
                            .padding(18)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(12)
                    }
                    .position(CGPoint(x:CGFloat((geometry.size.width * 0.5)), y: CGFloat(geometry.size.height * -0.35))
                    
                )}
            }
        }
    }
}

struct NewScreenView: View {
    var body: some View {
        VStack {
            
            Text("applicators 😾")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
        }
        .navigationBarTitle("blocked applications", displayMode: .inline)
    }
}

struct SocialView: View {
    var body: some View {
        VStack{
            
            Text("buddies 🐀")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            
        }
        .navigationBarTitle("thingington",displayMode: .inline)
    }
}

#Preview {
    ContentView()
}
