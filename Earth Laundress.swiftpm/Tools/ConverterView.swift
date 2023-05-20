import SwiftUI

struct ConverterView: View {
    @State private var selectedConverter = 0
    @State private var inputWeight = ""
    @State private var outputWeight = ""
    @State private var inputTemperature = ""
    @State private var outputTemperature = ""
    @State private var weightIndex = 0
    @State private var temperatureIndex = 0
    let weightOptions = ["Pounds to Kilograms", "Kilograms to Pounds"]
    let temperatureOptions = ["Fahrenheit to Celsius", "Celsius to Fahrenheit"]
    
    var convertedWeight: Double? {
        guard let weight = Double(inputWeight) else { return nil }
        
        switch weightIndex {
        case 0:
            return weight / 2.20462
        case 1:
            return weight * 2.20462
        default:
            return nil
        }
    }
    
    var convertedTemperature: Double? {
        guard let temperature = Double(inputTemperature) else { return nil }
        
        switch temperatureIndex {
        case 0:
            return (temperature - 32) * 5/9
        case 1:
            return temperature * 9/5 + 32
        default:
            return nil
        }
        
    }
    
    var body: some View {
        ScrollView {
            Text("Unit Converter").font(.largeTitle)
            HStack {
                Text("Converting: ")
                Picker("Select type of conversion", selection: $selectedConverter) {
                    Text("Weight (kg and lb)").tag(0)
                    Text("Temperature (C° and F)").tag(1)
                }
            }
            .pickerStyle(.menu)
            if(selectedConverter == 0) {
                
                HStack {
                    HStack {
                        TextField("0", text: $inputWeight)
                            .keyboardType(.decimalPad)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .multilineTextAlignment(.center)
                            .accessibility(label: Text("Amount of \(weightIndex == 0 ? "lb" : "kg") to convert to \(weightIndex == 0 ? "kg" : "lb")"))
                        Text(weightIndex == 0 ? "lb" : "kg")
                    }
                    //                        .frame(maxWidth: 200)
                    Button {
                        weightIndex = (weightIndex == 0) ? 1 : 0
                    } label: {
                        Text("<=>")
                            .padding(5)
                            .foregroundColor(Color.accentColor)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.accentColor, lineWidth: 3)
                            )
                            .accessibility(label: Text("Switch converting units"))
                    }
                    HStack {
                        Text("\(convertedWeight ?? 0, specifier: "%.2f") ")
                            .foregroundColor(.blue)
                        //                                .frame(maxWidth: 100)
                     +       
                        Text(weightIndex == 0 ? "kg" : "lb")
                    }
                    //                        .frame(maxWidth: 200)
                }
//                .fixedSize(horizontal: true, vertical: false)
            
        
            } else {
                Group {
                    HStack {
                        HStack {
                            TextField("0", text: $inputTemperature)
                                .keyboardType(.decimalPad)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
//                                .frame(maxWidth: 100)
                                .multilineTextAlignment(.center)
                                .accessibility(label: Text("Amount of  \(temperatureIndex == 0 ? "F" : "C°") to convert to \(temperatureIndex == 0 ? "C°" : "F")"))
                            Text(temperatureIndex == 0 ? "F" : "C°")
                        }
                        Button {
                            temperatureIndex = (temperatureIndex == 0) ? 1 : 0
                        } label: {
                            Text("<=>")
                                .padding(5)
                                .foregroundColor(Color.accentColor)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.accentColor, lineWidth: 3)
                                )
                                .accessibility(label: Text("Switch converting units"))
                        }
                        HStack {
                            Text("\(convertedTemperature ?? 0, specifier: "%.2f") ")
                                .foregroundColor(.blue)
//                                .frame(maxWidth: 100)
                            +
                            Text(temperatureIndex == 0 ? "C°" : "F")
                        }
                    }
//                    .fixedSize(horizontal: true, vertical: false)
                }
            }
        }
        .padding()
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Image(systemName: "scalemass").accessibility(hidden: true)
                    Text("Unit Converter").font(.headline)
                }
            }
        }
    }
}
