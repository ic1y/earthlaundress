import Foundation

struct Essential: Identifiable, Codable {
    var id = UUID()
    
    var name: String
    var isCompleted = false
}
