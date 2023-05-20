import SwiftUI

struct FactsView: View {
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                Text("Fun Facts about Laundry").font(.largeTitle).frame(maxWidth: .infinity, alignment: .center)
                Text("Let's learn more about this wretched chore!")
                Text("""
• The average American household washes 300 loads of laundry every year.
• The average residential washing machine uses 155 litres per load.
• New washers today use 70% less energy than they did in 1973.
• The word "laundry" comes from the Latin word *lavare* which means "to wash".
• The first electric washing machine was invented in 1907 by Alva J. Fisher of the Hurley Electric Laundry Equipment Company.
• The world's largest laundromat is located in Berwyn, Illinois, and has over 300 machines.
• The world's oldest laundry detergent brand is still in production. The brand is called "Persil" and was first introduced in 1907 in Germany.
• The average lifespan of the washing machine today is 10 to 13 years.
""")
                Image("Advert").resizable().aspectRatio(contentMode: .fit).frame(maxWidth: 461).accessibility(label: Text("1920 advert of the Hurley machine on newspaper"))
             }
        }.padding()
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(systemName: "exclamationmark.questionmark").accessibility(hidden: true)
                        Text("Laundry Fun Facts").font(.headline)
                    }
                }
            }
    }
}
