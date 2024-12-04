import SwiftUI

struct ContentView: View {
    var currentDate: Date = Date()  // Assuming currentDate is a Date property

    var nextDate: AttributedString {
        // Example logic to format the next date as an attributed string
        let nextDate = Calendar.current.date(byAdding: .day, value: 1, to: currentDate)!
        let formattedDate = DateFormatter.localizedString(from: nextDate, dateStyle: .medium, timeStyle: .none)
        
        let attributes: [AttributedString.Key : Any] = [
            .foregroundColor: Color.red,  // Example attribute
            .font: Font.bold(.system(size: 16))  // Example attribute
        ]
        
        return AttributedString(formattedDate, attributes: attributes)
    }

    var body: some View {
        VStack {
            Text("Current Date: \(currentDate)")
            Text("Next Date:")
            Text(nextDate)  // Display the attributed string
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
