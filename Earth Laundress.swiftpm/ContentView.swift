import SwiftUI

struct ContentView: View {
    // dark mode for all views
    @Environment(\.colorScheme) var colorScheme
    @State private var selection: Int?
    var body: some View {
        NavigationView {
            List {
                Section (header: Text("About this app")) {
                    NavigationLink (tag: 0, selection: $selection) {
                        WelcomeView()
                    } label: {
                        Label("Introduction", systemImage: "questionmark.circle")
                    }
                }
                Section (header: Text("Guides")) {
                    NavigationLink {
                        SortingView()
                    } label: {
                        Label("Sorting Clothes", systemImage: "basket")
                    }
                    NavigationLink {
                        StainView()
                    } label: {
                        Label("Removing Stains", systemImage: "tshirt")
                    }
                    NavigationLink {
                        ProductsView()
                    } label: {
                        Label("Green Products", systemImage: "leaf")
                    }
                    NavigationLink {
                        WashingView()
                    } label: {
                        Label("Washing Tips", systemImage: "washer")
                    }   
                    NavigationLink {
                        DosageView()
                    } label: {
                        Label("Detergent Dosage", systemImage: "cup.and.saucer")
                    }
                }
                Section(header: Text("Tools")) {
                    NavigationLink {
                        ChecklistView()
                    } label: {
                        Label("Essentials Checklist", systemImage: "checklist")
                    }
                    NavigationLink {
                        ConverterView()
                    } label: {
                        Label("Unit Converter", systemImage: "scalemass")
                    }
                }
                Section(header: Text("Miscellaneous")) {
                    NavigationLink {
                        FactsView()
                    } label: {
                        Label("Laundry Fun Facts", systemImage: "exclamationmark.questionmark")
                    }
                    NavigationLink {
                        LicenseView()
                    } label: {
                        Label("Licenses", systemImage: "person.2")
                    }
                }
            }.listStyle(.sidebar)
                .listStyle(GroupedListStyle())
                .navigationTitle("Earth Laundress")
        }.onAppear(perform: {
            // select WelcomeView when app runs
            selection = 0;
        })
    }
}

