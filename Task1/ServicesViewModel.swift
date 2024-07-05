import Foundation
// Defines the class to handle the services data and the addService method
class ServicesViewModel: ObservableObject {
    @Published var services: [Service] = []
    //Method that pushes the services array with new information
    func addService(name: String, date: Date, description: String) {
        let newService = Service(name: name, date: date, description: description)
        services.append(newService)
    }
}

