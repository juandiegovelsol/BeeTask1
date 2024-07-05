import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ServicesViewModel()
    @State private var serviceNam = ""
    @State private var serviceDate = Date()+3600*24
    @State private var serviceDescription = "Description"
    @State private var showAlert = false
    
    //Visual app components
    var body: some View {
        NavigationView {
            //Displays the Service form and the services list
            VStack {
                ServiceForm(
                    serviceName: $serviceName,
                    serviceDate: $serviceDate,
                    serviceDescription: $serviceDescription,
                    onSubmit: addService
                )
                ServiceListView(services: viewModel.services)
            }
            .navigationTitle("Car Maintenance App")
            //Displays alert depending on showAlert value
            .alert("Form Field is Missing or Service Date is Unavailable", isPresented: $showAlert) {
                        Button("Got it", role: .cancel) { }
                    }
        }
    }
    // Function that excecutes on onSubmit event and handles app flow
    private func addService() {
        // Change showAlert value and prevents form submitting when name is missing or date is previous or equal to current date
        if serviceName.isEmpty || serviceDate<Date() {
            showAlert = true
        } else {
            // Adds service using the ServicesViewModel.addService method
            viewModel.addService(name: serviceName, date: serviceDate, description: serviceDescription)
            
            // Reset form fields
            serviceName = ""
            serviceDate = Date()+3600*24
            serviceDescription = "Description"
        }
    }
}
