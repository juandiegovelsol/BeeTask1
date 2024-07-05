import SwiftUI
//Creates the structure to display the services data
struct ServiceListView: View {
    let services: [Service]
    
    var body: some View {
        //Iterates the services array to display info
        List(services) { service in
            VStack(alignment: .leading) {
                Text(service.name)
                    .font(.headline)
                Text("Service date: \(service.date, formatter: DateFormatter.shortDate)")
                    .font(.subheadline)
                Text("Description: \(service.description)")
                    .font(.body)
            }
        }
    }
}
//Creates a date formatter to display d/m/y date format
extension DateFormatter {
    static let shortDate: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
}
