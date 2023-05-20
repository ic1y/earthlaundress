import SwiftUI

struct CheckboxView: View {
    @Binding var checked: Bool
    
    var body: some View {
        Image(systemName: checked ? "checkmark.square.fill" : "square")
            .resizable()
            .frame(width: 32, height: 32)
            .foregroundColor(checked ? Color.accentColor : Color.secondary)
            .onTapGesture {
                self.checked.toggle()
            }
    }
}
