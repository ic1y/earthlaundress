import SwiftUI

struct StainView: View {
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                Text("How to remove different kinds of Stains")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .center)
                Text("Pre-treating stains increase the ability of the detergent to remove the stains. This is a guide on how to pre-treat different kinds of stains. *Note: For all stains, act quickly. Time can help the stain set in. Check the care symbols before using hot water or bleach.*")
                Text("\nCoffee ☕️").font(.title2)
                Text("Blot up as much split coffee as possible. Then, dab with a bit of warm water mixed with white vinegar and dish soap.")
                Text("\nGrease/oil 🛢️").font(.title2)
                Text("Soak it up with baby powder, baking soda or cornstarch powder.")
                Text("\nInk 🖋️").font(.title2)
                Text("Apply white toothpaste and proceed to rub fabric vigorously to remove ink stain. Bleach may be used as a last resort.")
                Text("\nBlood 🩸").font(.title2)
                Text("Soak stain in mixture of one cup vinegar and two cups warm water.")
            }.frame(maxWidth: .infinity, alignment: .leading)
            VStack (alignment: .leading){
                Text("\nDeodorant 🧴").font(.title2)
                Text("Soak in white vinegar for an hour, proceed to scrub and launder.")
                Text("\nChocolate 🍫").font(.title2)
                Text("Soak in laundry detergent for 10 minutes, and then soak in cold water before laundering.")
                Text("\nChewing gum 😋").font(.title2)
                Text("Rub with ice and gum should flake off.")
            }.frame(maxWidth: .infinity, alignment: .leading)
        }.padding()
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Image(systemName: "lasso").accessibility(hidden: true)
                    Text("Removing Stains").font(.headline)
                }
            }
        }
    }
}
