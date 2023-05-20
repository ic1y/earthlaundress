import SwiftUI

struct LicenseView: View {
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                Text("Licenses").font(.largeTitle).frame(maxWidth: .infinity, alignment: .center)
                DisclosureGroup {
                    Text("""
MIT License

Copyright (c) 2020 Simon Bachmann

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
""").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("ConfettiSwiftUI").multilineTextAlignment(.leading)
                }
                DisclosureGroup {
                    Text("*No license, but a request for adapted use was granted by the company TinkerTanker.*").frame(maxWidth: .infinity, alignment: .leading)
                } label: {
                    Text("ViewModel template").multilineTextAlignment(.leading)
                }
            }
        }.padding()
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Image(systemName: "person.2").accessibility(hidden: true)
                        Text("Licenses").font(.headline)
                    }
                }
            }
    }
}

