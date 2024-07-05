import Foundation

class ServicesViewModel: ObservableObject {
    @Published var services: [Service] = []
    
    func addService(name: String, date: Date, description: String) {
        let newService = Service(name: name, date: date, description: description)
        services.append(newService)
    }
}

