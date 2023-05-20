import Foundation
import SwiftUI

class EssentialManager: ObservableObject {
    @Published var essentials: [Essential] = [] {
        didSet {
            save()
        }
    }
    
    let sampleEssentials: [Essential] = [
        Essential(name: "Sort clothes (check care label if not sure)"),
        Essential(name: "Pre-treat stains (if any)"),
        Essential(name: "Empty all pockets"),
        Essential(name: "Unbutton all buttons and zip all zips"),
        Essential(name: "Use mesh bag for delicate items"),
        Essential(name: "Use high-efficiency washing machine with detergent labelled for such use"),
        Essential(name: "Measure load size and required detergent dosage"),
        Essential(name: "Use full load"),
        Essential(name: "Use cold water"),
        Essential(name: "Put laundry outside in to air dry on rack"),
        Essential(name: "(If using machine dryer) Use moisture sensor"),
        Essential(name: "Leave machine to dry"),
        Essential(name: "Clean lint screen"),
    ]
    
    init() {
        load()
    }
    
    func getArchiveURL() -> URL {
        let plistName = "essentials.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        return documentsDirectory.appendingPathComponent(plistName)
    }
    
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedEssentials = try? propertyListEncoder.encode(essentials)
        try? encodedEssentials?.write(to: archiveURL, options: .noFileProtection)
    }
    
    func load() {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
        
        var finalEssentials: [Essential]!
        
        if let retrievedEssentialData = try? Data(contentsOf: archiveURL),
           let decodedEssentials = try? propertyListDecoder.decode([Essential].self, from: retrievedEssentialData) {
            finalEssentials = decodedEssentials
        } else {
            finalEssentials = sampleEssentials
        }
        
        essentials = finalEssentials
    }
    func reset() {
        for index in essentials.indices {
            essentials[index].isCompleted = false
        }
    }
}
