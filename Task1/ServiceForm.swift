import SwiftUI
//Defines the services form to input service data
struct ServiceForm: View {
    //Defines variables and types
    @Binding var serviceName: String
    @Binding var serviceDate: Date
    @Binding var serviceDescription: String
    var onSubmit: () -> Void
    
    var body: some View {
        Form {
            //Creates input form fields
            TextField("Service Name", text: $serviceName)
            DatePicker("Service Date", selection: $serviceDate, displayedComponents: .date)
            TextEditor(text: $serviceDescription)
                .frame(height: 100)
            //Creates button that excecutes onSubmit method when clicked
            Button("Create Service") {
                onSubmit()
            }
        }
    }
}

