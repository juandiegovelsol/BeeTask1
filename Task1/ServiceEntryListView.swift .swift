import SwiftUI

struct ServiceEntryListView: View {
    let services: [Service]
    
    var body: some View {
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

extension DateFormatter {
    static let shortDate: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
}
