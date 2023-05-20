import SwiftUI

struct ProductsView: View {
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                Text("Green Products to Use").font(.largeTitle).frame(maxWidth: .infinity, alignment: .center)
                Text("Eco-friendly products can greatly save your money and the earth.")
                Text("\nNote: Trusting labels").font(.title2)
                Text("Products with claims of \"green\" or \"eco-safe\" that are vague and have no substantial evidence should be taken with caution. To help consumers identify actual \"green\" products, the Environmental Protection Agency (EPA) of the United States has launched a \"Safer Choice\" programme with the aim of \"helping consumers and commercial buyers identify and select products with safer chemical ingredients, without sacrificing quality or performance.\" This label can be trusted as there are stringent tests for products to have these labels. There is also an online repository of Safer Choice products on the EPA website for consumers to verify or find a eco-friendly product.")
                Image("SaferChoice").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 200).accessibility(label: Text("Safer Choice programme label"))
                Text("\nFabric Softeners: Don't buy them!").font(.title2)
                Text("Fabric Softeners, used to soften clothes and reduce static cling, contain chemicals harmful to the environment. Phosphate, one of these chemicals, stimulates algae growth that can become toxic and reduce oxygen levels in the water. It can also cause your clothes to become more flammable 🔥🔥🔥. You can try instead a home-made alternative of adding 1/4 cup of white vinegar to the rinse cycle or a dispenser ball, for softer clothes. Do not add bleach together with vinegar.")
            }
            VStack (alignment: .leading) {
                Text("\nDetergents").font(.title2)
                Text("You should try to look for products with the Safer Choice label that are labelled phosphate-free and animal-free/plant-based; without signal words like DANGER/CAUTION/WARNING (these are hazardous); fragrance-free (not \"unscented\").")
                Text("\nWashing Machines").font(.title2)
                Text("Front-loading washing machines with certification from the ENERGY STAR programme by EPA and Department of Energy use less energy. From the U.S. National Parks Service, machines with the label \"use about 25% less energy and 40% less water than regular clothes washers\". This is a huge difference, which will greatly reduce the impact of laundry on the environment. You can also get a $50 rebate on select washers with this label.")
            }
            }.padding()
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(systemName: "leaf").accessibility(hidden: true)
                        Text("Green Products").font(.headline)
                    }
                }
            }
    }
}
