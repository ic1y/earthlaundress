import SwiftUI

struct WashingView: View {
    var body: some View {
        ScrollView {
            VStack (alignment: .center) {
                Text("Helpful Washing tips").font(.largeTitle)
                Text("Now, for the actual thing! The part where everyone stares at the insides of the washing machine turning and turning and starts wondering about the meaning of life and their purpose of existence. But before that, there are some things to take note of. Some of these may be common knowledge, but they serve as a good reminder.\n")
                DisclosureGroup {
                    Text("Not unbuttoning may lead to tears in buttons").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Ensure that buttons are unbuttoned and zips unzipped").multilineTextAlignment(.leading)
                }
            }
            VStack (alignment: .leading) {
                DisclosureGroup {
                    Text("Check out the Removing Stains guide.").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Pre-treat stains (if any)").multilineTextAlignment(.leading)
                }
                DisclosureGroup {
                    Text("Using too much wastes money and may spoil your clothes. Check out the Detergent Dosage guide for more information.").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Use correct amount of required detergent").multilineTextAlignment(.leading)
                }
                DisclosureGroup {
                    Text("You wouldn't want the mess, would you?").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Empty all pockets").multilineTextAlignment(.leading)
                }
                DisclosureGroup {
                    Text("A mesh bag can protect the smaller and more delicate items of clothing in the washing machine.").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Put delicate fabrics in mesh bags").multilineTextAlignment(.leading)
                }
                DisclosureGroup {
                    Text("High-efficiency (HE) labelled detergents maximises the potential of the HE machines to clean your clothes effectively, saving water.").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("If you have a high-efficiency washing machine: use detergent labelled for such use").multilineTextAlignment(.leading)
                }
                DisclosureGroup {
                    Text("Cold water is just as effective as hot water in washing clothes.  However, you may need hot water for particularly stubborn stains.").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Wash clothes in cold water with detergent for cold water").multilineTextAlignment(.leading)
                }
                DisclosureGroup {
                    Text("Put your laundry outside on a drying rack. This saves electricity and reduces your energy bill.").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Air dry whenever possible").multilineTextAlignment(.leading)
                }
                DisclosureGroup {
                    Text("Some washing machines have moisture sensors that enables them to only use the necessary amount of energy to dry clothes. They automatically stop the drying when it has detected the clothing to be sufficiently dry, and reduces energy usage compared to timed drying.").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Avoid overdrying clothes with machine dryer. Use the moisture sensor dryer.").multilineTextAlignment(.leading)
                }
                DisclosureGroup {
                    Text("This improves air circulation and prevents fire hazards.").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("Clear lint screen after every load")
                }
                DisclosureGroup {
                    Text("This is especially important if you have a front-loading washer, which uses an airtight seal to prevent water from leaking. This seal can trap moisture in the machine and lead to mold. Leave the door open for at least an hour to allow moisture to evaporate.").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                     Text("Leave door/cover of machine open after use").multilineTextAlignment(.leading)
                }
              
            }
        }.padding()
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(systemName: "washer").accessibility(hidden: true)
                        Text("Washing Tips").font(.headline)
                    }
                }
            }
    }
}
