import Foundation

struct Service: Identifiable {
    let id = UUID()
    var name: String
    var date: Date
    var description: String
}
