import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                Text("Welcome!").font(.largeTitle).frame(maxWidth: .infinity, alignment: .center)
                Text("""
Earth Laundress is an educational laundry app made for Apple's WWDC 2023 Swift Student Challenge, that aims to inform users on correct and eco-friendly laundry practices. The app is designed to be an easily accessible, comprehensive and helpful companion in the carrying out of the chore.

These sustainable practices ensure your clothes last longer with correct washing. It also helps protect the planet by reducing energy use, water consumption and environmental damage and contributes to a more sustainable future. 🍁
""")
            }
            VStack (alignment: .center) {
                Image("Washing")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 640)
                    .accessibility(hidden: true)
            }
        }.padding()
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(systemName: "questionmark.circle").accessibility(hidden: true)
                        Text("Introduction").font(.headline)
                    }
                }
            }
    }
}
