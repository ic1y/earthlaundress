import SwiftUI

struct SortingView: View {
    @State var showLookup = false
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                Text("How to sort Clothes").font(.largeTitle).frame(maxWidth: .infinity, alignment: .center)
                Text("Sorting laundry is the important first step in ensuring that your clothes are cleaned properly and that they will not be damaged in the process.")
                Image("Basket")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 320)
                    .accessibility(hidden: true)
            }.padding(.horizontal)
            VStack (alignment: .leading) {
                Text("By Colour").font(.title2)
                Text("Sorting clothes into piles based on colour will help prevent colours bleeding onto each other during the washing cycle. This is especially important if you washing some or all of the clothes the first time.")
                Text("\nBy Dirt").font(.title2)
                Text("If you’re often involved in physical activity, it may be good to sort your clothes by the amount of dirt. Clothing with heavier stains should be washed separately from clothing with lighter or no stains.")
                Text("\nBy Fabric Type").font(.title2)
                Text("Different fabrics (cotton, silk, etc.) require different care during the wash cycle. In most clothes there is a care label with instructions for washing in the form of pictograms called laundry symbols. There are clothes that can only be hand washed, clothes that cannot be ironed, etc. I have included a helpful Reader's Digest chart on this.")
                Image("CareLabel").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 400)
                    .accessibility(label: Text("Japanese care label on clothing"))
                Image("Symbols").resizable()    
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 800)
                    .accessibility(label: Text("Reader's Digest chart on laundry symbols"))
            }.padding(.horizontal)
        }.padding(.vertical)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(systemName: "lasso").accessibility(hidden: true)
                        Text("Sorting Clothes").font(.headline)
                    }
                }
            }
    }
}
