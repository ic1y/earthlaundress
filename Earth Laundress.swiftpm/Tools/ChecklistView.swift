import SwiftUI

struct ChecklistView: View {
    @StateObject var essentialManager = EssentialManager()
    @State var isAlertPresented = false
    @State var confettiCounter = 0
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                Text("Essential Laundry Checklist")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .center)
                Text("If the \"if\" options do not apply to you, tick them anyway. *A special surprise is awaiting when all these are fufilled.*")
                Button {
                    isAlertPresented = true
                } label: {
                    Text("Reset checklist").foregroundColor(.accentColor)
                }
                .alert(isPresented: $isAlertPresented) {
                    Alert(title: Text("Reset the checklist?"), message: Text(" All boxes will be unchecked"), primaryButton: .destructive(Text("Reset"))
                    {
                        essentialManager.reset()
                    },
                        secondaryButton: .cancel()
                    )
                    }.frame(maxWidth: .infinity, alignment: .center)
                ForEach($essentialManager.essentials) {
                    $essential in HStack {
                        HStack (spacing: 10) {
                            CheckboxView(checked: $essential.isCompleted)
                                .accessibility(label: Text("Checkbox for \(essential.name)"))
                                .onChange(of: essential.isCompleted) { checked in
                                    if (checked) {
                                        if (essentialManager.essentials.allSatisfy({$0.isCompleted})) {
                                            // activates confetti
                                            confettiCounter += 1
                                        }
                                    }
                                }
                            Text(essential.name)
                        }
                    }
                }
            }.padding()
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(systemName: "checklist").accessibility(hidden: true)
                        Text("Essentials Checklist").font(.headline)
                    }
                }
            }
            .confettiCannon(counter: $confettiCounter, num: 100, radius: 450)
        }
    }
}

