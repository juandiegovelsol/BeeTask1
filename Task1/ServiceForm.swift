import SwiftUI

struct ServiceForm: View {
    @Binding var serviceName: String
    @Binding var serviceDate: Date
    @Binding var serviceDescription: String
    var onSubmit: () -> Void
    
    var body: some View {
        Form {
            TextField("Service Name", text: $serviceName)
            DatePicker("Service Date", selection: $serviceDate, displayedComponents: .date)
            TextEditor(text: $serviceDescription)
                .frame(height: 100)
            
            Button("Create Service") {
                onSubmit()
            }
        }
    }
}

