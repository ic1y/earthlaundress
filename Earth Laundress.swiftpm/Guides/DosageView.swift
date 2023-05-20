import SwiftUI

struct DosageView: View {
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                Text("Calculating Detergent Dosage").font(.largeTitle).frame(maxWidth:.infinity, alignment: .center)
                Text("A correct laundry detergent dosage ensures that you do not waste money and that your clothes aren't damaged. You needn't follow these suggestions strictly, feel free to use more detergent if you do find your clothes very soiled and needing more.")
                Text("\nMeasuring Load Size").font(.title2)
                Text("""
The dosage depends on the load. We can measure load size by weight.
**Medium load: ~2.7kg
Large load: ~5kg
XL load: ~9.5kg**

We can also measure load by the appearance of the washing machine drum. Drum size may vary, so it is recommended to refer to the machine's manual first.
**Medium load: Half full
Large load: Three-quarters full
XL load: Completely full but not tightly packed**
""")
                Text("\nDosage amount").font(.title2)
                Text("""
After approximating the load size, you will be able to measure the approximate required dosage.
**Medium loads: ~3 tablespoons of liquid detergent
Large loads: 4 to 5 table spoons
XL loads: 8 tablespoons**

If you happen to use detergent packs:
**Medium loads: 1 pack of detergent
Large loads: 2 packs
XL loads: 3 packs**
""")
                Text("\nHandwashing").font(.title2)
                Text("If you are handwashing, a dilute solution of **1 to 2 tablespoons** of liquid detergent in water for a small load of clothing not exceeding 2.2kg should suffice. Do not use detergent packs as it is excessive for handwashing.")
            }
        }.padding()
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(systemName: "cup.and.saucer").accessibility(hidden: true)
                        Text("Detergent Dosage").font(.headline)
                    }
                }
            }
    }
}
