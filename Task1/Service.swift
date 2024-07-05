import Foundation
//Service data structure defined
struct Service: Identifiable {
    let id = UUID()
    var name: String
    var date: Date
    var description: String
}
